.. -*- coding: utf-8; mode: rst -*-

dmx.h
=====

.. parsed-literal::

    \/\* SPDX-License-Identifier\: LGPL-2.1+ WITH Linux-syscall-note \*\/
    \/\*
     \* dmx.h
     \*
     \* Copyright (C) 2000 Marcus Metzler \<marcus@convergence.de\>
     \*                  \& Ralph  Metzler \<ralph@convergence.de\>
     \*                    for convergence integrated media GmbH
     \*
     \* This program is free software; you can redistribute it and\/or
     \* modify it under the terms of the GNU Lesser General Public License
     \* as published by the Free Software Foundation; either version 2.1
     \* of the License, or (at your option) any later version.
     \*
     \* This program is distributed in the hope that it will be useful,
     \* but WITHOUT ANY WARRANTY; without even the implied warranty of
     \* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
     \* GNU General Public License for more details.
     \*
     \* You should have received a copy of the GNU Lesser General Public License
     \* along with this program; if not, write to the Free Software
     \* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
     \*
     \*\/

    \#ifndef \_UAPI\_DVBDMX\_H\_
    \#define \_UAPI\_DVBDMX\_H\_

    \#include \<linux\/types.h\>
    \#ifndef \_\_KERNEL\_\_
    \#include \<time.h\>
    \#endif

    \#define DMX\_FILTER\_SIZE 16

    \/\* Min recording chunk upon which event is generated \*\/
    \#define \ :ref:`DMX_REC_BUFF_CHUNK_MIN_SIZE <dmx-rec-buff-chunk-min-size>`             (100\*188)

    \#define \ :ref:`DMX_MAX_DECODER_BUFFER_NUM <dmx-max-decoder-buffer-num>`              (32)

    \/\*\*
     \* enum :c:type:`dmx_output` - Output for the demux.
     \*
     \* @DMX\_OUT\_DECODER\:
     \*      Streaming directly to decoder.
     \* @DMX\_OUT\_TAP\:
     \*      Output going to a memory buffer (to be retrieved via the read command).
     \*      Delivers the stream output to the demux device on which the ioctl
     \*      is called.
     \* @DMX\_OUT\_TS\_TAP\:
     \*      Output multiplexed into a new TS (to be retrieved by reading from the
     \*      logical DVR device). Routes output to the logical DVR device
     \*      \`\`\/dev\/dvb\/adapter?\/dvr?\`\`, which delivers a TS multiplexed from all
     \*      filters for which @DMX\_OUT\_TS\_TAP was specified.
     \* @DMX\_OUT\_TSDEMUX\_TAP\:
     \*      Like @DMX\_OUT\_TS\_TAP but retrieved from the DMX device.
     \*\/
    enum :c:type:`dmx_output` \{
            DMX\_OUT\_DECODER,
            DMX\_OUT\_TAP,
            DMX\_OUT\_TS\_TAP,
            DMX\_OUT\_TSDEMUX\_TAP
    \};

    \/\*\*
     \* :c:type:`dmx_input <dmx_input>` - Input from the demux.
     \*
     \* @:c:type:`DMX_IN_FRONTEND <dmx_input>`\:    Input from a front-end device.
     \* @:c:type:`DMX_IN_DVR <dmx_input>`\:         Input from the logical DVR device.
     \*\/
    :c:type:`dmx_input <dmx_input>` \{
            :c:type:`DMX_IN_FRONTEND <dmx_input>`,
            :c:type:`DMX_IN_DVR <dmx_input>`
    \};

    \/\*\*
     \* :c:type:`dmx_ts_pes <dmx_pes_type>` - type of the PES filter.
     \*
     \* @:c:type:`DMX_PES_AUDIO0 <dmx_pes_type>`\:     first audio PID. Also referred as @DMX\_PES\_AUDIO.
     \* @:c:type:`DMX_PES_VIDEO0 <dmx_pes_type>`\:     first video PID. Also referred as @DMX\_PES\_VIDEO.
     \* @:c:type:`DMX_PES_TELETEXT0 <dmx_pes_type>`\:  first teletext PID. Also referred as @DMX\_PES\_TELETEXT.
     \* @:c:type:`DMX_PES_SUBTITLE0 <dmx_pes_type>`\:  first subtitle PID. Also referred as @DMX\_PES\_SUBTITLE.
     \* @:c:type:`DMX_PES_PCR0 <dmx_pes_type>`\:       first Program Clock Reference PID.
     \*                      Also referred as @DMX\_PES\_PCR.
     \*
     \* @:c:type:`DMX_PES_AUDIO1 <dmx_pes_type>`\:     second audio PID.
     \* @:c:type:`DMX_PES_VIDEO1 <dmx_pes_type>`\:     second video PID.
     \* @:c:type:`DMX_PES_TELETEXT1 <dmx_pes_type>`\:  second teletext PID.
     \* @:c:type:`DMX_PES_SUBTITLE1 <dmx_pes_type>`\:  second subtitle PID.
     \* @:c:type:`DMX_PES_PCR1 <dmx_pes_type>`\:       second Program Clock Reference PID.
     \*
     \* @:c:type:`DMX_PES_AUDIO2 <dmx_pes_type>`\:     third audio PID.
     \* @:c:type:`DMX_PES_VIDEO2 <dmx_pes_type>`\:     third video PID.
     \* @:c:type:`DMX_PES_TELETEXT2 <dmx_pes_type>`\:  third teletext PID.
     \* @:c:type:`DMX_PES_SUBTITLE2 <dmx_pes_type>`\:  third subtitle PID.
     \* @:c:type:`DMX_PES_PCR2 <dmx_pes_type>`\:       third Program Clock Reference PID.
     \*
     \* @:c:type:`DMX_PES_AUDIO3 <dmx_pes_type>`\:     fourth audio PID.
     \* @:c:type:`DMX_PES_VIDEO3 <dmx_pes_type>`\:     fourth video PID.
     \* @:c:type:`DMX_PES_TELETEXT3 <dmx_pes_type>`\:  fourth teletext PID.
     \* @:c:type:`DMX_PES_SUBTITLE3 <dmx_pes_type>`\:  fourth subtitle PID.
     \* @:c:type:`DMX_PES_PCR3 <dmx_pes_type>`\:       fourth Program Clock Reference PID.
     \*
     \* @:c:type:`DMX_PES_OTHER <dmx_pes_type>`\:      any other PID.
     \*\/

    :c:type:`dmx_ts_pes <dmx_pes_type>` \{
            :c:type:`DMX_PES_AUDIO0 <dmx_pes_type>`,
            :c:type:`DMX_PES_VIDEO0 <dmx_pes_type>`,
            :c:type:`DMX_PES_TELETEXT0 <dmx_pes_type>`,
            :c:type:`DMX_PES_SUBTITLE0 <dmx_pes_type>`,
            :c:type:`DMX_PES_PCR0 <dmx_pes_type>`,

            :c:type:`DMX_PES_AUDIO1 <dmx_pes_type>`,
            :c:type:`DMX_PES_VIDEO1 <dmx_pes_type>`,
            :c:type:`DMX_PES_TELETEXT1 <dmx_pes_type>`,
            :c:type:`DMX_PES_SUBTITLE1 <dmx_pes_type>`,
            :c:type:`DMX_PES_PCR1 <dmx_pes_type>`,

            :c:type:`DMX_PES_AUDIO2 <dmx_pes_type>`,
            :c:type:`DMX_PES_VIDEO2 <dmx_pes_type>`,
            :c:type:`DMX_PES_TELETEXT2 <dmx_pes_type>`,
            :c:type:`DMX_PES_SUBTITLE2 <dmx_pes_type>`,
            :c:type:`DMX_PES_PCR2 <dmx_pes_type>`,

            :c:type:`DMX_PES_AUDIO3 <dmx_pes_type>`,
            :c:type:`DMX_PES_VIDEO3 <dmx_pes_type>`,
            :c:type:`DMX_PES_TELETEXT3 <dmx_pes_type>`,
            :c:type:`DMX_PES_SUBTITLE3 <dmx_pes_type>`,
            :c:type:`DMX_PES_PCR3 <dmx_pes_type>`,

            :c:type:`DMX_PES_OTHER <dmx_pes_type>`
    \};

    \#define DMX\_PES\_AUDIO    :c:type:`DMX_PES_AUDIO0 <dmx_pes_type>`
    \#define DMX\_PES\_VIDEO    :c:type:`DMX_PES_VIDEO0 <dmx_pes_type>`
    \#define DMX\_PES\_TELETEXT :c:type:`DMX_PES_TELETEXT0 <dmx_pes_type>`
    \#define DMX\_PES\_SUBTITLE :c:type:`DMX_PES_SUBTITLE0 <dmx_pes_type>`
    \#define DMX\_PES\_PCR      :c:type:`DMX_PES_PCR0 <dmx_pes_type>`

    \/\*\*
     \* struct :c:type:`dmx_filter` - Specifies a section header filter.
     \*
     \* @filter\: bit array with bits to be matched at the section header.
     \* @mask\: bits that are valid at the filter bit array.
     \* @mode\: mode of match\: if bit is zero, it will match if equal (positive
     \*        match); if bit is one, it will match if the bit is negated.
     \*
     \* Note\: All arrays in this struct have a size of DMX\_FILTER\_SIZE (16 bytes).
     \*\/
    struct :c:type:`dmx_filter` \{
            \_\_u8  filter[DMX\_FILTER\_SIZE];
            \_\_u8  mask[DMX\_FILTER\_SIZE];
            \_\_u8  mode[DMX\_FILTER\_SIZE];
    \};

    \/\*\*
     \* struct :c:type:`dmx_sct_filter_params` - Specifies a section filter.
     \*
     \* @pid\: PID to be filtered.
     \* @filter\: section header filter, as defined by \&struct dmx\_filter.
     \* @timeout\: maximum time to filter, in milliseconds.
     \* @flags\: extra flags for the section filter.
     \*
     \* Carries the configuration for a MPEG-TS section filter.
     \*
     \* The @flags can be\:
     \*
     \*      - \%DMX\_CHECK\_CRC - only deliver sections where the CRC check succeeded;
     \*      - \%DMX\_ONESHOT - disable the section filter after one section
     \*        has been delivered;
     \*      - \%DMX\_IMMEDIATE\_START - Start filter immediately without requiring a
     \*        \:ref\:\`DMX\_START\`.
     \*\/
    struct :c:type:`dmx_sct_filter_params` \{
            \_\_u16             pid;
            struct :c:type:`dmx_filter` filter;
            \_\_u32             timeout;
            \_\_u32             flags;
    \#define :c:type:`DMX_CHECK_CRC <dmx_sct_filter_params>`       1
    \#define :c:type:`DMX_ONESHOT <dmx_sct_filter_params>`         2
    \#define :c:type:`DMX_IMMEDIATE_START <dmx_sct_filter_params>` 4
    \#define \ :ref:`DMX_KERNEL_CLIENT <dmx-kernel-client>`   0x8000
    \};

    enum :c:type:`dmx_video_codec` \{
            \ :ref:`DMX_VIDEO_CODEC_MPEG2 <dmx-video-codec-mpeg2>`\ ,
            \ :ref:`DMX_VIDEO_CODEC_H264 <dmx-video-codec-h264>`\ ,
            \ :ref:`DMX_VIDEO_CODEC_VC1 <dmx-video-codec-vc1>`
    \};

    \/\* Index entries types \*\/
    \#define \ :ref:`DMX_IDX_RAI <dmx-idx-rai>`                         0x00000001
    \#define \ :ref:`DMX_IDX_PUSI <dmx-idx-pusi>`                        0x00000002
    \#define \ :ref:`DMX_IDX_MPEG_SEQ_HEADER <dmx-idx-mpeg-seq-header>`             0x00000004
    \#define \ :ref:`DMX_IDX_MPEG_GOP <dmx-idx-mpeg-gop>`                    0x00000008
    \#define \ :ref:`DMX_IDX_MPEG_FIRST_SEQ_FRAME_START <dmx-idx-mpeg-first-seq-frame-start>`  0x00000010
    \#define \ :ref:`DMX_IDX_MPEG_FIRST_SEQ_FRAME_END <dmx-idx-mpeg-first-seq-frame-end>`    0x00000020
    \#define \ :ref:`DMX_IDX_MPEG_I_FRAME_START <dmx-idx-mpeg-i-frame-start>`          0x00000040
    \#define \ :ref:`DMX_IDX_MPEG_I_FRAME_END <dmx-idx-mpeg-i-frame-end>`            0x00000080
    \#define \ :ref:`DMX_IDX_MPEG_P_FRAME_START <dmx-idx-mpeg-p-frame-start>`          0x00000100
    \#define \ :ref:`DMX_IDX_MPEG_P_FRAME_END <dmx-idx-mpeg-p-frame-end>`            0x00000200
    \#define \ :ref:`DMX_IDX_MPEG_B_FRAME_START <dmx-idx-mpeg-b-frame-start>`          0x00000400
    \#define \ :ref:`DMX_IDX_MPEG_B_FRAME_END <dmx-idx-mpeg-b-frame-end>`            0x00000800
    \#define \ :ref:`DMX_IDX_H264_SPS <dmx-idx-h264-sps>`                    0x00001000
    \#define \ :ref:`DMX_IDX_H264_PPS <dmx-idx-h264-pps>`                    0x00002000
    \#define \ :ref:`DMX_IDX_H264_FIRST_SPS_FRAME_START <dmx-idx-h264-first-sps-frame-start>`  0x00004000
    \#define \ :ref:`DMX_IDX_H264_FIRST_SPS_FRAME_END <dmx-idx-h264-first-sps-frame-end>`    0x00008000
    \#define \ :ref:`DMX_IDX_H264_IDR_START <dmx-idx-h264-idr-start>`              0x00010000
    \#define \ :ref:`DMX_IDX_H264_IDR_END <dmx-idx-h264-idr-end>`                0x00020000
    \#define \ :ref:`DMX_IDX_H264_NON_IDR_START <dmx-idx-h264-non-idr-start>`          0x00040000
    \#define \ :ref:`DMX_IDX_H264_NON_IDR_END <dmx-idx-h264-non-idr-end>`            0x00080000
    \#define \ :ref:`DMX_IDX_VC1_SEQ_HEADER <dmx-idx-vc1-seq-header>`              0x00100000
    \#define \ :ref:`DMX_IDX_VC1_ENTRY_POINT <dmx-idx-vc1-entry-point>`             0x00200000
    \#define \ :ref:`DMX_IDX_VC1_FIRST_SEQ_FRAME_START <dmx-idx-vc1-first-seq-frame-start>`   0x00400000
    \#define \ :ref:`DMX_IDX_VC1_FIRST_SEQ_FRAME_END <dmx-idx-vc1-first-seq-frame-end>`     0x00800000
    \#define \ :ref:`DMX_IDX_VC1_FRAME_START <dmx-idx-vc1-frame-start>`             0x01000000
    \#define \ :ref:`DMX_IDX_VC1_FRAME_END <dmx-idx-vc1-frame-end>`               0x02000000
    \#define \ :ref:`DMX_IDX_H264_ACCESS_UNIT_DEL <dmx-idx-h264-access-unit-del>`        0x04000000
    \#define \ :ref:`DMX_IDX_H264_SEI <dmx-idx-h264-sei>`                    0x08000000

    struct :c:type:`dmx_pes_filter_params` \{
            \_\_u16          pid;
            :c:type:`dmx_input <dmx_input>` input;
            enum :c:type:`dmx_output` output;
            :c:type:`dmx_ts_pes <dmx_pes_type>` pes\_type;
            \_\_u32          flags;

            \/\*
             \* The following configures when the event
             \* \ :ref:`DMX_EVENT_NEW_REC_CHUNK <dmx-event-new-rec-chunk>` will be triggered.
             \* When new recorded data is received with size
             \* equal or larger than this value a new event
             \* will be triggered. This is relevant when
             \* output is DMX\_OUT\_TS\_TAP or DMX\_OUT\_TSDEMUX\_TAP,
             \* size must be at least \ :ref:`DMX_REC_BUFF_CHUNK_MIN_SIZE <dmx-rec-buff-chunk-min-size>`
             \* and smaller than buffer size.
             \*\/
            \_\_u32          rec\_chunk\_size;

            enum :c:type:`dmx_video_codec` video\_codec;
    \};

    struct :c:type:`dmx_buffer_status` \{
            \/\* size of buffer in bytes \*\/
            unsigned int size;

            \/\* fullness of buffer in bytes \*\/
            unsigned int fullness;

            \/\*
             \* How many bytes are free
             \* It's the same as\: size-fullness-1
             \*\/
            unsigned int free\_bytes;

            \/\* read pointer offset in bytes \*\/
            unsigned int read\_offset;

            \/\* write pointer offset in bytes \*\/
            unsigned int write\_offset;

            \/\* non-zero if data error occurred \*\/
            int error;
    \};

    \/\* Events associated with each demux filter \*\/
    enum :c:type:`dmx_event` \{
            \/\* New PES packet is ready to be consumed \*\/
            \ :ref:`DMX_EVENT_NEW_PES <dmx-event-new-pes>` = 0x00000001,

            \/\* New section is ready to be consumed \*\/
            \ :ref:`DMX_EVENT_NEW_SECTION <dmx-event-new-section>` = 0x00000002,

            \/\* New recording chunk is ready to be consumed \*\/
            \ :ref:`DMX_EVENT_NEW_REC_CHUNK <dmx-event-new-rec-chunk>` = 0x00000004,

            \/\* New PCR value is ready \*\/
            \ :ref:`DMX_EVENT_NEW_PCR <dmx-event-new-pcr>` = 0x00000008,

            \/\* Overflow \*\/
            \ :ref:`DMX_EVENT_BUFFER_OVERFLOW <dmx-event-buffer-overflow>` = 0x00000010,

            \/\* Section was dropped due to CRC error \*\/
            \ :ref:`DMX_EVENT_SECTION_CRC_ERROR <dmx-event-section-crc-error>` = 0x00000020,

            \/\* End-of-stream, no more data from this filter \*\/
            \ :ref:`DMX_EVENT_EOS <dmx-event-eos>` = 0x00000040,

            \/\* New Elementary Stream data is ready \*\/
            \ :ref:`DMX_EVENT_NEW_ES_DATA <dmx-event-new-es-data>` = 0x00000080,

            \/\* Data markers \*\/
            \ :ref:`DMX_EVENT_MARKER <dmx-event-marker>` = 0x00000100,

            \/\* New indexing entry is ready \*\/
            \ :ref:`DMX_EVENT_NEW_INDEX_ENTRY <dmx-event-new-index-entry>` = 0x00000200,

            \/\*
             \* Section filter timer expired. This is notified
             \* when timeout is configured to section filter
             \* (dmx\_sct\_filter\_params) and no sections were
             \* received for the given time.
             \*\/
            \ :ref:`DMX_EVENT_SECTION_TIMEOUT <dmx-event-section-timeout>` = 0x00000400,

            \/\* Scrambling bits change between clear and scrambled \*\/
            \ :ref:`DMX_EVENT_SCRAMBLING_STATUS_CHANGE <dmx-event-scrambling-status-change>` = 0x00000800
    \};

    enum :c:type:`dmx_oob_cmd` \{
            \/\* End-of-stream, no more data from this filter \*\/
            \ :ref:`DMX_OOB_CMD_EOS <dmx-oob-cmd-eos>`\ ,

            \/\* Data markers \*\/
            \ :ref:`DMX_OOB_CMD_MARKER <dmx-oob-cmd-marker>`\ ,
    \};

    \/\* Flags passed in filter events \*\/

    \/\* Continuity counter error was detected \*\/
    \#define \ :ref:`DMX_FILTER_CC_ERROR <dmx-filter-cc-error>`                     0x01

    \/\* Discontinuity indicator was set \*\/
    \#define \ :ref:`DMX_FILTER_DISCONTINUITY_INDICATOR <dmx-filter-discontinuity-indicator>`      0x02

    \/\* PES length in PES header is not correct \*\/
    \#define \ :ref:`DMX_FILTER_PES_LENGTH_ERROR <dmx-filter-pes-length-error>`             0x04

    \/\* PES info associated with \ :ref:`DMX_EVENT_NEW_PES <dmx-event-new-pes>` event \*\/
    struct :c:type:`dmx_pes_event_info` \{
            \/\* Offset at which PES information starts \*\/
            \_\_u32 base\_offset;

            \/\*
             \* Start offset at which PES data
             \* from the stream starts.
             \* Equal to base\_offset if PES data
             \* starts from the beginning.
             \*\/
            \_\_u32 start\_offset;

            \/\* Total length holding the PES information \*\/
            \_\_u32 total\_length;

            \/\* Actual length holding the PES data \*\/
            \_\_u32 actual\_length;

            \/\* Local receiver timestamp in 27MHz \*\/
            \_\_u64 stc;

            \/\* Flags passed in filter events \*\/
            \_\_u32 flags;

            \/\*
             \* Number of TS packets with Transport Error Indicator (TEI)
             \* found while constructing the PES.
             \*\/
            \_\_u32 transport\_error\_indicator\_counter;

            \/\* Number of continuity errors found while constructing the PES \*\/
            \_\_u32 continuity\_error\_counter;

            \/\* Total number of TS packets holding the PES \*\/
            \_\_u32 ts\_packets\_num;
    \};

    \/\* Section info associated with \ :ref:`DMX_EVENT_NEW_SECTION <dmx-event-new-section>` event \*\/
    struct :c:type:`dmx_section_event_info` \{
            \/\* Offset at which section information starts \*\/
            \_\_u32 base\_offset;

            \/\*
             \* Start offset at which section data
             \* from the stream starts.
             \* Equal to base\_offset if section data
             \* starts from the beginning.
             \*\/
            \_\_u32 start\_offset;

            \/\* Total length holding the section information \*\/
            \_\_u32 total\_length;

            \/\* Actual length holding the section data \*\/
            \_\_u32 actual\_length;

            \/\* Flags passed in filter events \*\/
            \_\_u32 flags;
    \};

    \/\* Recording info associated with \ :ref:`DMX_EVENT_NEW_REC_CHUNK <dmx-event-new-rec-chunk>` event \*\/
    struct :c:type:`dmx_rec_chunk_event_info` \{
            \/\* Offset at which recording chunk starts \*\/
            \_\_u32 offset;

            \/\* Size of recording chunk in bytes \*\/
            \_\_u32 size;
    \};

    \/\* PCR info associated with \ :ref:`DMX_EVENT_NEW_PCR <dmx-event-new-pcr>` event \*\/
    struct :c:type:`dmx_pcr_event_info` \{
            \/\* Local timestamp in 27MHz
             \* when PCR packet was received
             \*\/
            \_\_u64 stc;

            \/\* PCR value in 27MHz \*\/
            \_\_u64 pcr;

            \/\* Flags passed in filter events \*\/
            \_\_u32 flags;
    \};

    \/\*
     \* Elementary stream data information associated
     \* with \ :ref:`DMX_EVENT_NEW_ES_DATA <dmx-event-new-es-data>` event
     \*\/
    struct :c:type:`dmx_es_data_event_info` \{
            \/\* Buffer user-space handle \*\/
            int buf\_handle;

            \/\*
             \* Cookie to provide when releasing the buffer
             \* using the DMX\_RELEASE\_DECODER\_BUFFER ioctl command
             \*\/
            int cookie;

            \/\* Offset of data from the beginning of the buffer \*\/
            \_\_u32 offset;

            \/\* Length of data in buffer (in bytes) \*\/
            \_\_u32 data\_len;

            \/\* Indication whether PTS value is valid \*\/
            int pts\_valid;

            \/\* PTS value associated with the buffer \*\/
            \_\_u64 pts;

            \/\* Indication whether DTS value is valid \*\/
            int dts\_valid;

            \/\* DTS value associated with the buffer \*\/
            \_\_u64 dts;

            \/\* STC value associated with the buffer in 27MHz \*\/
            \_\_u64 stc;

            \/\*
             \* Number of TS packets with Transport Error Indicator (TEI) set
             \* in the TS packet header since last reported event
             \*\/
            \_\_u32 transport\_error\_indicator\_counter;

            \/\* Number of continuity errors since last reported event \*\/
            \_\_u32 continuity\_error\_counter;

            \/\* Total number of TS packets processed since last reported event \*\/
            \_\_u32 ts\_packets\_num;

            \/\*
             \* Number of dropped bytes due to insufficient buffer space,
             \* since last reported event
             \*\/
            \_\_u32 ts\_dropped\_bytes;
    \};

    \/\* Marker details associated with \ :ref:`DMX_EVENT_MARKER <dmx-event-marker>` event \*\/
    struct :c:type:`dmx_marker_event_info` \{
            \/\* Marker id \*\/
            \_\_u64 id;
    \};

    \/\* Indexing information associated with \ :ref:`DMX_EVENT_NEW_INDEX_ENTRY <dmx-event-new-index-entry>` event \*\/
    struct :c:type:`dmx_index_event_info` \{
            \/\* Index entry type, one of DMX\_IDX\_\* \*\/
            \_\_u64 type;

            \/\*
             \* The PID the index entry belongs to.
             \* In case of recording filter, multiple PIDs may exist in the same
             \* filter through \ :ref:`DMX_ADD_PID <dmx_add_pid>` ioctl and each can be indexed separately.
             \*\/
            \_\_u16 pid;

            \/\*
             \* The TS packet number in the recorded data at which
             \* the indexing event is found.
             \*\/
            \_\_u64 match\_tsp\_num;

            \/\*
             \* The TS packet number in the recorded data preceding
             \* match\_tsp\_num and has PUSI set.
             \*\/
            \_\_u64 last\_pusi\_tsp\_num;

            \/\* STC associated with match\_tsp\_num, in 27MHz \*\/
            \_\_u64 stc;
    \};

    \/\* Scrambling information associated with \ :ref:`DMX_EVENT_SCRAMBLING_STATUS_CHANGE <dmx-event-scrambling-status-change>` \*\/
    struct :c:type:`dmx_scrambling_status_event_info` \{
            \/\*
             \* The PID which its scrambling bit status changed.
             \* In case of recording filter, multiple PIDs may exist in the same
             \* filter through \ :ref:`DMX_ADD_PID <dmx_add_pid>` ioctl, each may have
             \* different scrambling bits status.
             \*\/
            \_\_u16           pid;

            \/\* old value of scrambling bits \*\/
            \_\_u8 old\_value;

            \/\* new value of scrambling bits \*\/
            \_\_u8 new\_value;
    \};

    \/\*
     \* Filter's event returned through DMX\_GET\_EVENT.
     \* poll with POLLPRI would block until events are available.
     \*\/
    struct :c:type:`dmx_filter_event` \{
            enum :c:type:`dmx_event` type;

            union \{
                    struct :c:type:`dmx_pes_event_info` pes;
                    struct :c:type:`dmx_section_event_info` section;
                    struct :c:type:`dmx_rec_chunk_event_info` recording\_chunk;
                    struct :c:type:`dmx_pcr_event_info` pcr;
                    struct :c:type:`dmx_es_data_event_info` es\_data;
                    struct :c:type:`dmx_marker_event_info` marker;
                    struct :c:type:`dmx_index_event_info` index;
                    struct :c:type:`dmx_scrambling_status_event_info` scrambling\_status;
            \} params;
    \};

    \/\* Filter's buffer requirement returned in dmx\_caps \*\/
    struct :c:type:`dmx_buffer_requirement` \{
            \/\* Buffer size alignment, 0 means no special requirement \*\/
            \_\_u32 size\_alignment;

            \/\* Maximum buffer size allowed \*\/
            \_\_u32 max\_size;

            \/\* Maximum number of linear buffers handled by demux \*\/
            \_\_u32 max\_buffer\_num;

            \/\* Feature support bitmap as detailed below \*\/
            \_\_u32           flags;

    \/\* Buffer must be allocated as physically contiguous memory \*\/
    \#define \ :ref:`DMX_BUFFER_CONTIGUOUS_MEM <dmx-buffer-contiguous-mem>`               0x1

    \/\* If the filter's data is decrypted, the buffer should be secured one \*\/
    \#define \ :ref:`DMX_BUFFER_SECURED_IF_DECRYPTED <dmx-buffer-secured-if-decrypted>`         0x2

    \/\* Buffer can be allocated externally \*\/
    \#define \ :ref:`DMX_BUFFER_EXTERNAL_SUPPORT <dmx-buffer-external-support>`             0x4

    \/\* Buffer can be allocated internally \*\/
    \#define \ :ref:`DMX_BUFFER_INTERNAL_SUPPORT <dmx-buffer-internal-support>`             0x8

    \/\* Filter output can be output to a linear buffer group \*\/
    \#define \ :ref:`DMX_BUFFER_LINEAR_GROUP_SUPPORT <dmx-buffer-linear-group-support>`         0x10

    \/\* Buffer may be allocated as cached buffer \*\/
    \#define \ :ref:`DMX_BUFFER_CACHED <dmx-buffer-cached>`               0x20
    \};

    \/\* Out-of-band (OOB) command \*\/
    struct :c:type:`dmx_oob_command` \{
            enum :c:type:`dmx_oob_cmd` type;

            union \{
                    struct :c:type:`dmx_marker_event_info` marker;
            \} params;
    \};

    typedef struct :c:type:`dmx_caps` \{
            \_\_u32 caps;

    \/\* Indicates whether demux support playback from memory in pull mode \*\/
    \#define \ :ref:`DMX_CAP_PULL_MODE <dmx-cap-pull-mode>`                               0x01

    \/\* Indicates whether demux support indexing of recorded video stream \*\/
    \#define \ :ref:`DMX_CAP_VIDEO_INDEXING <dmx-cap-video-indexing>`                  0x02

    \/\* Indicates whether demux support sending data directly to video decoder \*\/
    \#define \ :ref:`DMX_CAP_VIDEO_DECODER_DATA <dmx-cap-video-decoder-data>`              0x04

    \/\* Indicates whether demux support sending data directly to audio decoder \*\/
    \#define \ :ref:`DMX_CAP_AUDIO_DECODER_DATA <dmx-cap-audio-decoder-data>`              0x08

    \/\* Indicates whether demux support sending data directly to subtitle decoder \*\/
    \#define \ :ref:`DMX_CAP_SUBTITLE_DECODER_DATA <dmx-cap-subtitle-decoder-data>`   0x10

    \/\* Indicates whether TS insertion is supported \*\/
    \#define \ :ref:`DMX_CAP_TS_INSERTION <dmx-cap-ts-insertion>`    0x20

    \/\* Indicates whether playback from secured input is supported \*\/
    \#define \ :ref:`DMX_CAP_SECURED_INPUT_PLAYBACK <dmx-cap-secured-input-playback>`  0x40

    \/\* Indicates whether automatic buffer flush upon overflow is allowed \*\/
    \#define \ :ref:`DMX_CAP_AUTO_BUFFER_FLUSH <dmx-cap-auto-buffer-flush>`       0x80

            \/\* Number of decoders demux can output data to \*\/
            int num\_decoders;

            \/\* Number of demux devices \*\/
            int num\_demux\_devices;

            \/\* Max number of PID filters \*\/
            int num\_pid\_filters;

            \/\* Max number of section filters \*\/
            int num\_section\_filters;

            \/\*
             \* Max number of section filters using same PID,
             \* 0 if not supported
             \*\/
            int num\_section\_filters\_per\_pid;

            \/\*
             \* Length of section filter, not including section
             \* length field (2 bytes).
             \*\/
            int section\_filter\_length;

            \/\* Max number of demod based input \*\/
            int num\_demod\_inputs;

            \/\* Max number of memory based input \*\/
            int num\_memory\_inputs;

            \/\* Overall bitrate from all inputs concurrently. Mbit\/sec \*\/
            int max\_bitrate;

            \/\* Max bitrate from single demod input. Mbit\/sec \*\/
            int demod\_input\_max\_bitrate;

            \/\* Max bitrate from single memory input. Mbit\/sec \*\/
            int memory\_input\_max\_bitrate;

            \/\* Max number of supported cipher operations per PID \*\/
            int num\_cipher\_ops;

            \/\* Max possible value of STC reported by demux, in 27MHz \*\/
            \_\_u64 max\_stc;

            \/\*
             \* For indexing support (\ :ref:`DMX_CAP_VIDEO_INDEXING <dmx-cap-video-indexing>` capability) this is
             \* the max number of video pids that can be indexed for a single
             \* recording filter. If 0, means there is not limitation.
     \*\/
            int recording\_max\_video\_pids\_indexed;

            struct :c:type:`dmx_buffer_requirement` section;

            \/\* For PES not sent to decoder \*\/
            struct :c:type:`dmx_buffer_requirement` pes;

            \/\* For PES sent to decoder \*\/
            struct :c:type:`dmx_buffer_requirement` decoder;

            \/\* Recording buffer for recording of 188 bytes packets \*\/
            struct :c:type:`dmx_buffer_requirement` recording\_188\_tsp;

            \/\* Recording buffer for recording of 192 bytes packets \*\/
            struct :c:type:`dmx_buffer_requirement` recording\_192\_tsp;

            \/\* DVR input buffer for playback of 188 bytes packets \*\/
            struct :c:type:`dmx_buffer_requirement` playback\_188\_tsp;

            \/\* DVR input buffer for playback of 192 bytes packets \*\/
            struct :c:type:`dmx_buffer_requirement` playback\_192\_tsp;
    \} \ :c:type:`dmx_caps_t`\ ;

    typedef enum :c:type:`dmx_source` \{
            \ :ref:`DMX_SOURCE_FRONT0 <dmx-source-front0>` = 0,
            \ :ref:`DMX_SOURCE_FRONT1 <dmx-source-front1>`\ ,
            \ :ref:`DMX_SOURCE_FRONT2 <dmx-source-front2>`\ ,
            \ :ref:`DMX_SOURCE_FRONT3 <dmx-source-front3>`\ ,
            \ :ref:`DMX_SOURCE_DVR0 <dmx-source-dvr0>`   = 16,
            \ :ref:`DMX_SOURCE_DVR1 <dmx-source-dvr1>`\ ,
            \ :ref:`DMX_SOURCE_DVR2 <dmx-source-dvr2>`\ ,
            \ :ref:`DMX_SOURCE_DVR3 <dmx-source-dvr3>`
    \} \ :c:type:`dmx_source_t`\ ;

    enum :c:type:`dmx_tsp_format_t` \{
            \ :ref:`DMX_TSP_FORMAT_188 <dmx-tsp-format-188>` = 0,
            \ :ref:`DMX_TSP_FORMAT_192_TAIL <dmx-tsp-format-192-tail>`\ ,
            \ :ref:`DMX_TSP_FORMAT_192_HEAD <dmx-tsp-format-192-head>`\ ,
            \ :ref:`DMX_TSP_FORMAT_204 <dmx-tsp-format-204>`\ ,
    \};

    enum :c:type:`dmx_playback_mode_t` \{
            \/\*
             \* In push mode, if one of output buffers
             \* is full, the buffer would overflow
             \* and demux continue processing incoming stream.
             \* This is the default mode. When playing from frontend,
             \* this is the only mode that is allowed.
             \*\/
            \ :ref:`DMX_PB_MODE_PUSH <dmx-pb-mode-push>` = 0,

            \/\*
             \* In pull mode, if one of output buffers
             \* is full, demux stalls waiting for free space,
             \* this would cause DVR input buffer fullness
             \* to accumulate.
             \* This mode is possible only when playing
             \* from DVR.
             \*\/
            \ :ref:`DMX_PB_MODE_PULL <dmx-pb-mode-pull>`\ ,
    \};

    struct :c:type:`dmx_stc` \{
            unsigned int num;     \/\* input \: which STC? 0..N \*\/
            unsigned int base;    \/\* output\: divisor for stc to get 90 kHz clock \*\/
            \_\_u64 stc;            \/\* output\: stc in 'base'\*90 kHz units \*\/
    \};

    enum :c:type:`dmx_buffer_mode` \{
            \/\*
             \* demux buffers are allocated internally
             \* by the demux driver. This is the default mode.
             \* \ :ref:`DMX_SET_BUFFER_SIZE <dmx_set_buffer_size>` can be used to set the size of
             \* this buffer.
             \*\/
            \ :ref:`DMX_BUFFER_MODE_INTERNAL <dmx-buffer-mode-internal>`\ ,

            \/\*
             \* demux buffers are allocated externally and provided
             \* to demux through DMX\_SET\_BUFFER.
             \* When this mode is used \ :ref:`DMX_SET_BUFFER_SIZE <dmx_set_buffer_size>` and
             \* mmap are prohibited.
             \*\/
            \ :ref:`DMX_BUFFER_MODE_EXTERNAL <dmx-buffer-mode-external>`\ ,
    \};

    struct :c:type:`dmx_buffer` \{
            unsigned int size;
            int handle;

            \/\*
             \* The following indication is relevant only when setting
             \* DVR input buffer. It indicates whether the input buffer
             \* being set is secured one or not. Secured (locked) buffers
             \* are required for playback from secured input. In such case
             \* write() syscall is not allowed.
             \*\/
            int is\_protected;
    \};

    struct :c:type:`dmx_decoder_buffers` \{
            \/\*
             \* Specify if linear buffer support is requested. If set, buffers\_num
             \* must be greater than 1
             \*\/
            int is\_linear;

            \/\*
             \* Specify number of external buffers allocated by user.
             \* If set to 0 means internal buffer allocation is requested
             \*\/
            \_\_u32 buffers\_num;

            \/\* Specify buffer size, either external or internal \*\/
            \_\_u32 buffers\_size;

            \/\* Array of externally allocated buffer handles \*\/
            int handles[DMX\_MAX\_DECODER\_BUFFER\_NUM];
    \};

    struct :c:type:`dmx_secure_mode` \{
            \/\*
             \* Specifies whether the filter is secure or not.
             \* Filter should be set as secured if the filter's data \*may\* include
             \* encrypted data that would require decryption configured through
             \* \ :ref:`DMX_SET_CIPHER <dmx_set_cipher>` ioctl. The setting may be done while
             \* filter is in idle state only.
             \*\/
            int is\_secured;
    \};

    struct :c:type:`dmx_cipher_operation` \{
            \/\* Indication whether the operation is encryption or decryption \*\/
            int encrypt;

            \/\* The ID of the key used for decryption or encryption \*\/
            \_\_u32 key\_ladder\_id;
    \};

    \#define \ :ref:`DMX_MAX_CIPHER_OPERATIONS_COUNT <dmx-max-cipher-operations-count>` 5
    struct :c:type:`dmx_cipher_operations` \{
            \/\*
             \* The PID to perform the cipher operations on.
             \* In case of recording filter, multiple PIDs may exist in the same
             \* filter through \ :ref:`DMX_ADD_PID <dmx_add_pid>` ioctl, each may have different
             \* cipher operations.
             \*\/
            \_\_u16 pid;

            \/\* Total number of operations \*\/
            \_\_u8 operations\_count;

            \/\*
             \* Cipher operation to perform on the given PID.
             \* The operations are performed in the order they are given.
             \*\/
            struct :c:type:`dmx_cipher_operation` operations[DMX\_MAX\_CIPHER\_OPERATIONS\_COUNT];
    \};

    struct :c:type:`dmx_events_mask` \{
            \/\*
             \* Bitmask of events to be disabled (dmx\_event).
             \* Disabled events will not be notified to the user.
             \* By default all events are enabled except for
             \* DMX\_EVENT\_NEW\_ES\_DATA.
             \* Overflow event can't be disabled.
             \*\/
            \_\_u32 disable\_mask;

            \/\*
             \* Bitmask of events that will not wake-up the user
             \* when user calls poll with POLLPRI flag.
             \* Events that are used as wake-up source should not be
             \* disabled in disable\_mask or they would not be used
             \* as a wake-up source.
             \* By default all enabled events are set as wake-up events.
             \* Overflow event can't be disabled as a wake-up source.
             \*\/
            \_\_u32 no\_wakeup\_mask;

            \/\*
             \* Number of ready wake-up events which will trigger
             \* a wake-up when user calls poll with POLLPRI flag.
             \* Default is set to 1.
             \*\/
            \_\_u32 wakeup\_threshold;
    \};

    struct :c:type:`dmx_indexing_params` \{
            \/\*
             \* PID to index. In case of recording filter, multiple PIDs
             \* may exist in the same filter through \ :ref:`DMX_ADD_PID <dmx_add_pid>` ioctl.
             \* It is assumed that the PID was already added using \ :ref:`DMX_ADD_PID <dmx_add_pid>`
             \* or an error will be reported.
             \*\/
            \_\_u16 pid;

            \/\* enable or disable indexing, default is disabled \*\/
            int enable;

            \/\* combination of DMX\_IDX\_\* bits \*\/
            \_\_u64 types;
    \};

    struct :c:type:`dmx_set_ts_insertion` \{
            \/\*
             \* Unique identifier managed by the caller.
             \* This identifier can be used later to remove the
             \* insertion using \ :ref:`DMX_ABORT_TS_INSERTION <dmx_abort_ts_insertion>` ioctl.
             \*\/
            \_\_u32 identifier;

            \/\*
             \* Repetition time in msec, minimum allowed value is 25msec.
             \* 0 repetition time means one-shot insertion is done.
             \* Insertion done based on wall-clock.
             \*\/
            \_\_u32 repetition\_time;

            \/\*
             \* TS packets buffer to be inserted.
             \* The buffer is inserted as-is to the recording buffer
             \* without any modification.
             \* It is advised to set discontinuity flag in the very
             \* first TS packet in the buffer.
             \*\/
            const \_\_u8 \*ts\_packets;

            \/\*
             \* Size in bytes of the TS packets buffer to be inserted.
             \* Should be in multiples of 188 or 192 bytes
             \* depending on recording filter output format.
             \*\/
            size\_t size;
    \};

    struct :c:type:`dmx_abort_ts_insertion` \{
            \/\*
             \* Identifier of the insertion buffer previously set
             \* using DMX\_SET\_TS\_INSERTION.
             \*\/
            \_\_u32 identifier;
    \};

    struct :c:type:`dmx_scrambling_bits` \{
            \/\*
             \* The PID to return its scrambling bit value.
             \* In case of recording filter, multiple PIDs may exist in the same
             \* filter through \ :ref:`DMX_ADD_PID <dmx_add_pid>` ioctl, each may have different
             \* scrambling bits status.
             \*\/
            \_\_u16 pid;

            \/\* Current value of scrambling bits\: 0, 1, 2 or 3 \*\/
            \_\_u8 value;
    \};

    \#define \ :ref:`DMX_START <dmx_start>`                \_IO('o', 41)
    \#define \ :ref:`DMX_STOP <dmx_stop>`                 \_IO('o', 42)
    \#define \ :ref:`DMX_SET_FILTER <dmx_set_filter>`           \_IOW('o', 43, struct :c:type:`dmx_sct_filter_params`\ )
    \#define \ :ref:`DMX_SET_PES_FILTER <dmx_set_pes_filter>`       \_IOW('o', 44, struct :c:type:`dmx_pes_filter_params`\ )
    \#define \ :ref:`DMX_SET_BUFFER_SIZE <dmx_set_buffer_size>`      \_IO('o', 45)
    \#define \ :ref:`DMX_GET_PES_PIDS <dmx_get_pes_pids>`         \_IOR('o', 47, \_\_u16[5])
    \#define \ :ref:`DMX_GET_CAPS <dmx_get_caps>`             \_IOR('o', 48, \ :c:type:`dmx_caps_t`\ )
    \#define \ :ref:`DMX_SET_SOURCE <dmx_set_source>`           \_IOW('o', 49, \ :c:type:`dmx_source_t`\ )
    \#define \ :ref:`DMX_GET_STC <dmx_get_stc>`              \_IOWR('o', 50, struct :c:type:`dmx_stc`\ )
    \#define \ :ref:`DMX_ADD_PID <dmx_add_pid>`              \_IOW('o', 51, \_\_u16)
    \#define \ :ref:`DMX_REMOVE_PID <dmx_remove_pid>`           \_IOW('o', 52, \_\_u16)
    \#define \ :ref:`DMX_SET_TS_PACKET_FORMAT <dmx_set_ts_packet_format>` \_IOW('o', 53, enum :c:type:`dmx_tsp_format_t`\ )
    \#define \ :ref:`DMX_SET_TS_OUT_FORMAT <dmx_set_ts_out_format>`    \_IOW('o', 54, enum :c:type:`dmx_tsp_format_t`\ )
    \#define \ :ref:`DMX_SET_DECODER_BUFFER_SIZE <dmx_set_decoder_buffer_size>`     \_IO('o', 55)
    \#define \ :ref:`DMX_GET_BUFFER_STATUS <dmx_get_buffer_status>`    \_IOR('o', 56, struct :c:type:`dmx_buffer_status`\ )
    \#define \ :ref:`DMX_RELEASE_DATA <dmx_release_data>`                 \_IO('o', 57)
    \#define \ :ref:`DMX_FEED_DATA <dmx_feed_data>`                    \_IO('o', 58)
    \#define \ :ref:`DMX_SET_PLAYBACK_MODE <dmx_set_playback_mode>`    \_IOW('o', 59, enum :c:type:`dmx_playback_mode_t`\ )
    \#define \ :ref:`DMX_GET_EVENT <dmx_get_event>`            \_IOR('o', 60, struct :c:type:`dmx_filter_event`\ )
    \#define \ :ref:`DMX_SET_BUFFER_MODE <dmx_set_buffer_mode>`      \_IOW('o', 61, enum :c:type:`dmx_buffer_mode`\ )
    \#define \ :ref:`DMX_SET_BUFFER <dmx_set_buffer>`           \_IOW('o', 62, struct :c:type:`dmx_buffer`\ )
    \#define \ :ref:`DMX_SET_DECODER_BUFFER <dmx_set_decoder_buffer>`   \_IOW('o', 63, struct :c:type:`dmx_decoder_buffers`\ )
    \#define \ :ref:`DMX_REUSE_DECODER_BUFFER <dmx_reuse_decoder_buffer>` \_IO('o', 64)
    \#define \ :ref:`DMX_SET_SECURE_MODE <dmx_set_secure_mode>`     \_IOW('o', 65, struct :c:type:`dmx_secure_mode`\ )
    \#define \ :ref:`DMX_SET_EVENTS_MASK <dmx_set_events_mask>`     \_IOW('o', 66, struct :c:type:`dmx_events_mask`\ )
    \#define \ :ref:`DMX_GET_EVENTS_MASK <dmx_get_events_mask>`     \_IOR('o', 67, struct :c:type:`dmx_events_mask`\ )
    \#define \ :ref:`DMX_PUSH_OOB_COMMAND <dmx_push_oob_command>`    \_IOW('o', 68, struct :c:type:`dmx_oob_command`\ )
    \#define \ :ref:`DMX_SET_INDEXING_PARAMS <dmx_set_indexing_params>` \_IOW('o', 69, struct :c:type:`dmx_indexing_params`\ )
    \#define \ :ref:`DMX_SET_TS_INSERTION <dmx_set_ts_insertion>` \_IOW('o', 70, struct :c:type:`dmx_set_ts_insertion`\ )
    \#define \ :ref:`DMX_ABORT_TS_INSERTION <dmx_abort_ts_insertion>` \_IOW('o', 71, struct :c:type:`dmx_abort_ts_insertion`\ )
    \#define \ :ref:`DMX_GET_SCRAMBLING_BITS <dmx_get_scrambling_bits>` \_IOWR('o', 72, struct :c:type:`dmx_scrambling_bits`\ )
    \#define \ :ref:`DMX_SET_CIPHER <dmx_set_cipher>` \_IOW('o', 73, struct :c:type:`dmx_cipher_operations`\ )
    \#define \ :ref:`DMX_FLUSH_BUFFER <dmx_flush_buffer>` \_IO('o', 74)

    \#if !defined(\_\_KERNEL\_\_)

    \/\* This is needed for legacy userspace support \*\/
    typedef enum :c:type:`dmx_output` \ :c:type:`dmx_output_t <dmx_output>`\ ;
    typedef :c:type:`dmx_input <dmx_input>` :c:type:`dmx_input_t <dmx_input>`;
    typedef :c:type:`dmx_ts_pes <dmx_pes_type>` :c:type:`dmx_pes_type_t <dmx_pes_type>`;
    typedef struct :c:type:`dmx_filter` :c:type:`dmx_filter_t <dmx_filter>`;

    \#endif

    \#endif \/\* \_UAPI\_DVBDMX\_H\_ \*\/
