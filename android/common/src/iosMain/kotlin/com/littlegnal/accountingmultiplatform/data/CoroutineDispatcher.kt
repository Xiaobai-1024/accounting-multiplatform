/*
 * Copyright (C) 2019 littlegnal
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.littlegnal.accountingmultiplatform.data

import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Runnable
import platform.darwin.dispatch_async
import platform.darwin.dispatch_get_main_queue
import kotlin.coroutines.CoroutineContext

actual val runCoroutineDispatcher: CoroutineContext = NsQueueDispatcher

actual val uiCoroutineDispatcher: CoroutineContext = NsQueueDispatcher

object NsQueueDispatcher : CoroutineDispatcher() {
  override fun dispatch(
    context: CoroutineContext,
    block: Runnable
  ) {
    dispatch_async(dispatch_get_main_queue()) {
      block.run()
    }
  }
}
