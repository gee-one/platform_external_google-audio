#
# Copyright (C) 2020 shagbag913
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# Google audio package
#

LOCAL_PATH := external/google-audio

UI_FILES := ChargingStarted Dock Effect_Tick InCallNotification KeypressDelete KeypressInvalid \
	KeypressReturn KeypressSpacebar KeypressStandard Lock LowBattery NFCFailure NFCInitiated \
	NFCSuccess NFCTransferComplete NFCTransferInitiated Trusted Undock Unlock VideoRecord \
	VideoStop WirelessChargingStarted audio_end audio_initiate camera_click camera_focus

RINGTONE_FILES := Beats Copycat Crackle Dance_party Early_bird Flutterby Hey_hey Hotline \
	Leaps_and_bounds Lollipop Lost_and_found Mash_up Monkey_around Romance Rrrring Schools_out \
	Shooting_star Spaceship Summer_night The_big_adventure Zen Zen_too

NOTIFICATION_FILES := Beginning Birdsong Chime Clink Coconuts Duet End_note Flick Gentle_gong Hey \
	Mallet Note Orders_up Ping Pipes Popcorn Shopkeeper Sticks_and_stones Strum Trill Tuneup \
	Tweeter Twinkle

ALARM_FILES := A_real_hoot Awaken Bounce Bright_morning Cuckoo_clock Drip Early_twilight Flow \
	Full_of_wonder Gallop Gentle_breeze Icicles Jump_start Loose_change Nudge Orbit Rise \
	Rolling_fog Spokes Sunshower Sway Wag

PRODUCT_COPY_FILES += $(foreach f,$(UI_FILES), \
	$(LOCAL_PATH)/ui/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(RINGTONE_FILES), \
	$(LOCAL_PATH)/ringtones/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(NOTIFICATION_FILES), \
	$(LOCAL_PATH)/notifications/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(ALARM_FILES), \
	$(LOCAL_PATH)/alarms/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/$(f).ogg)
