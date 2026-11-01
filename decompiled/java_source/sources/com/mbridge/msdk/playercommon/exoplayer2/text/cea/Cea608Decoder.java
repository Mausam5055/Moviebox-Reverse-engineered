package com.mbridge.msdk.playercommon.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle;
import com.mbridge.msdk.playercommon.exoplayer2.text.SubtitleDecoderException;
import com.mbridge.msdk.playercommon.exoplayer2.text.SubtitleInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.text.SubtitleOutputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.tn.lib.view.FlowLayout;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Cea608Decoder extends CeaDecoder {
    private static final int CC_FIELD_FLAG = 1;
    private static final byte CC_IMPLICIT_DATA_HEADER = -4;
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int CC_TYPE_FLAG = 2;
    private static final int CC_VALID_608_ID = 4;
    private static final int CC_VALID_FLAG = 4;
    private static final byte CTRL_BACKSPACE = 33;
    private static final byte CTRL_CARRIAGE_RETURN = 45;
    private static final byte CTRL_DELETE_TO_END_OF_ROW = 36;
    private static final byte CTRL_END_OF_CAPTION = 47;
    private static final byte CTRL_ERASE_DISPLAYED_MEMORY = 44;
    private static final byte CTRL_ERASE_NON_DISPLAYED_MEMORY = 46;
    private static final byte CTRL_RESUME_CAPTION_LOADING = 32;
    private static final byte CTRL_RESUME_DIRECT_CAPTIONING = 41;
    private static final byte CTRL_ROLL_UP_CAPTIONS_2_ROWS = 37;
    private static final byte CTRL_ROLL_UP_CAPTIONS_3_ROWS = 38;
    private static final byte CTRL_ROLL_UP_CAPTIONS_4_ROWS = 39;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    private static final int NTSC_CC_FIELD_1 = 0;
    private static final int NTSC_CC_FIELD_2 = 1;
    private static final int STYLE_ITALICS = 7;
    private static final int STYLE_UNCHANGED = 8;
    private int captionMode;
    private int captionRowCount;
    private List<Cue> cues;
    private List<Cue> lastCues;
    private final int packetLength;
    private byte repeatableControlCc1;
    private byte repeatableControlCc2;
    private boolean repeatableControlSet;
    private final int selectedField;
    private static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, FlowLayout.SPACING_AUTO, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 109, 110, 111, 112, 113, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 120, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 231, 247, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, 211, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 235, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 239, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 249, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 171, 187};
    private static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 236, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 242, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 245, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 92, 94, 95, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 126, 196, 228, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 246, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 165, 164, 9474, 197, 229, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 248, 9484, 9488, 9492, 9496};
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ArrayList<CueBuilder> cueBuilders = new ArrayList<>();
    private CueBuilder currentCueBuilder = new CueBuilder(0, 4);

    private static class CueBuilder {
        private static final int BASE_ROW = 15;
        private static final int SCREEN_CHARWIDTH = 32;
        private int captionMode;
        private int captionRowCount;
        private int indent;
        private int row;
        private int tabOffset;
        private final List<CueStyle> cueStyles = new ArrayList();
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final StringBuilder captionStringBuilder = new StringBuilder();

        private static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i11, boolean z10, int i12) {
                this.style = i11;
                this.underline = z10;
                this.start = i12;
            }
        }

        public CueBuilder(int i11, int i12) {
            reset(i11);
            setCaptionRowCount(i12);
        }

        private static void setColorSpan(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13) {
            if (i13 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i13), i11, i12, 33);
        }

        private static void setItalicSpan(SpannableStringBuilder spannableStringBuilder, int i11, int i12) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i11, i12, 33);
        }

        private static void setUnderlineSpan(SpannableStringBuilder spannableStringBuilder, int i11, int i12) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i12, 33);
        }

        public void append(char c11) {
            this.captionStringBuilder.append(c11);
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0; size--) {
                    CueStyle cueStyle = this.cueStyles.get(size);
                    int i11 = cueStyle.start;
                    if (i11 != length) {
                        return;
                    }
                    cueStyle.start = i11 - 1;
                }
            }
        }

        public Cue build() {
            int i11;
            float f11;
            int i12;
            int i13;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i14 = 0; i14 < this.rolledUpCaptions.size(); i14++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i14));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) buildSpannableString());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i15 = this.indent + this.tabOffset;
            int length = (32 - i15) - spannableStringBuilder.length();
            int i16 = i15 - length;
            if (this.captionMode == 2 && (Math.abs(i16) < 3 || length < 0)) {
                f11 = 0.5f;
                i11 = 1;
            } else if (this.captionMode != 2 || i16 <= 0) {
                i11 = 0;
                f11 = ((i15 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f11 = (((32 - length) / 32.0f) * 0.8f) + 0.1f;
                i11 = 2;
            }
            if (this.captionMode == 1 || (i12 = this.row) > 7) {
                i12 = this.row - 17;
                i13 = 2;
            } else {
                i13 = 0;
            }
            return new Cue(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i12, 1, i13, f11, i11, Float.MIN_VALUE);
        }

        public SpannableString buildSpannableString() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = 0;
            int i16 = 0;
            boolean z10 = false;
            while (i15 < this.cueStyles.size()) {
                CueStyle cueStyle = this.cueStyles.get(i15);
                boolean z11 = cueStyle.underline;
                int i17 = cueStyle.style;
                if (i17 != 8) {
                    boolean z12 = i17 == 7;
                    if (i17 != 7) {
                        i14 = Cea608Decoder.STYLE_COLORS[i17];
                    }
                    z10 = z12;
                }
                int i18 = cueStyle.start;
                i15++;
                if (i18 != (i15 < this.cueStyles.size() ? this.cueStyles.get(i15).start : length)) {
                    if (i11 != -1 && !z11) {
                        setUnderlineSpan(spannableStringBuilder, i11, i18);
                        i11 = -1;
                    } else if (i11 == -1 && z11) {
                        i11 = i18;
                    }
                    if (i12 != -1 && !z10) {
                        setItalicSpan(spannableStringBuilder, i12, i18);
                        i12 = -1;
                    } else if (i12 == -1 && z10) {
                        i12 = i18;
                    }
                    if (i14 != i13) {
                        setColorSpan(spannableStringBuilder, i16, i18, i13);
                        i13 = i14;
                        i16 = i18;
                    }
                }
            }
            if (i11 != -1 && i11 != length) {
                setUnderlineSpan(spannableStringBuilder, i11, length);
            }
            if (i12 != -1 && i12 != length) {
                setItalicSpan(spannableStringBuilder, i12, length);
            }
            if (i16 != length) {
                setColorSpan(spannableStringBuilder, i16, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public int getRow() {
            return this.row;
        }

        public boolean isEmpty() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void reset(int i11) {
            this.captionMode = i11;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public void rollUp() {
            this.rolledUpCaptions.add(buildSpannableString());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int iMin = Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= iMin) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public void setCaptionRowCount(int i11) {
            this.captionRowCount = i11;
        }

        public void setIndent(int i11) {
            this.indent = i11;
        }

        public void setRow(int i11) {
            this.row = i11;
        }

        public void setStyle(int i11, boolean z10) {
            this.cueStyles.add(new CueStyle(i11, z10, this.captionStringBuilder.length()));
        }

        public void setTab(int i11) {
            this.tabOffset = i11;
        }

        public String toString() {
            return this.captionStringBuilder.toString();
        }
    }

    public Cea608Decoder(String str, int i11) {
        this.packetLength = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i11 == 3 || i11 == 4) {
            this.selectedField = 2;
        } else {
            this.selectedField = 1;
        }
        setCaptionMode(0);
        resetCueBuilders();
    }

    private static char getChar(byte b11) {
        return (char) BASIC_CHARACTER_SET[(b11 & 127) - 32];
    }

    private List<Cue> getDisplayCues() {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < this.cueBuilders.size(); i11++) {
            Cue cueBuild = this.cueBuilders.get(i11).build();
            if (cueBuild != null) {
                arrayList.add(cueBuild);
            }
        }
        return arrayList;
    }

    private static char getExtendedEsFrChar(byte b11) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b11 & 31];
    }

    private static char getExtendedPtDeChar(byte b11) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b11 & 31];
    }

    private static char getSpecialChar(byte b11) {
        return (char) SPECIAL_CHARACTER_SET[b11 & 15];
    }

    private boolean handleCtrl(byte b11, byte b12) {
        boolean zIsRepeatable = isRepeatable(b11);
        if (zIsRepeatable) {
            if (this.repeatableControlSet && this.repeatableControlCc1 == b11 && this.repeatableControlCc2 == b12) {
                this.repeatableControlSet = false;
                return true;
            }
            this.repeatableControlSet = true;
            this.repeatableControlCc1 = b11;
            this.repeatableControlCc2 = b12;
        }
        if (isMidrowCtrlCode(b11, b12)) {
            handleMidrowCtrl(b12);
        } else if (isPreambleAddressCode(b11, b12)) {
            handlePreambleAddressCode(b11, b12);
        } else if (isTabCtrlCode(b11, b12)) {
            this.currentCueBuilder.setTab(b12 - 32);
        } else if (isMiscCode(b11, b12)) {
            handleMiscCode(b12);
        }
        return zIsRepeatable;
    }

    private void handleMidrowCtrl(byte b11) {
        this.currentCueBuilder.append(' ');
        this.currentCueBuilder.setStyle((b11 >> 1) & 7, (b11 & 1) == 1);
    }

    private void handleMiscCode(byte b11) {
        if (b11 == 32) {
            setCaptionMode(2);
            return;
        }
        if (b11 == 41) {
            setCaptionMode(3);
            return;
        }
        switch (b11) {
            case 37:
                setCaptionMode(1);
                setCaptionRowCount(2);
                break;
            case 38:
                setCaptionMode(1);
                setCaptionRowCount(3);
                break;
            case 39:
                setCaptionMode(1);
                setCaptionRowCount(4);
                break;
            default:
                int i11 = this.captionMode;
                if (i11 != 0) {
                    if (b11 != 33) {
                        switch (b11) {
                            case 44:
                                this.cues = null;
                                if (i11 == 1 || i11 == 3) {
                                    resetCueBuilders();
                                }
                                break;
                            case 45:
                                if (i11 == 1 && !this.currentCueBuilder.isEmpty()) {
                                    this.currentCueBuilder.rollUp();
                                    break;
                                }
                                break;
                            case 46:
                                resetCueBuilders();
                                break;
                            case 47:
                                this.cues = getDisplayCues();
                                resetCueBuilders();
                                break;
                        }
                    } else {
                        this.currentCueBuilder.backspace();
                        break;
                    }
                }
                break;
        }
    }

    private void handlePreambleAddressCode(byte b11, byte b12) {
        int i11 = ROW_INDICES[b11 & 7];
        if ((b12 & CTRL_RESUME_CAPTION_LOADING) != 0) {
            i11++;
        }
        if (i11 != this.currentCueBuilder.getRow()) {
            if (this.captionMode != 1 && !this.currentCueBuilder.isEmpty()) {
                CueBuilder cueBuilder = new CueBuilder(this.captionMode, this.captionRowCount);
                this.currentCueBuilder = cueBuilder;
                this.cueBuilders.add(cueBuilder);
            }
            this.currentCueBuilder.setRow(i11);
        }
        boolean z10 = (b12 & 16) == 16;
        boolean z11 = (b12 & 1) == 1;
        int i12 = (b12 >> 1) & 7;
        this.currentCueBuilder.setStyle(z10 ? 8 : i12, z11);
        if (z10) {
            this.currentCueBuilder.setIndent(COLUMN_INDICES[i12]);
        }
    }

    private static boolean isMidrowCtrlCode(byte b11, byte b12) {
        return (b11 & 247) == 17 && (b12 & 240) == 32;
    }

    private static boolean isMiscCode(byte b11, byte b12) {
        return (b11 & 247) == 20 && (b12 & 240) == 32;
    }

    private static boolean isPreambleAddressCode(byte b11, byte b12) {
        return (b11 & 240) == 16 && (b12 & 192) == 64;
    }

    private static boolean isRepeatable(byte b11) {
        return (b11 & 240) == 16;
    }

    private static boolean isTabCtrlCode(byte b11, byte b12) {
        return (b11 & 247) == 23 && b12 >= 33 && b12 <= 35;
    }

    private void resetCueBuilders() {
        this.currentCueBuilder.reset(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void setCaptionMode(int i11) {
        int i12 = this.captionMode;
        if (i12 == i11) {
            return;
        }
        this.captionMode = i11;
        resetCueBuilders();
        if (i12 == 3 || i11 == 1 || i11 == 0) {
            this.cues = null;
        }
    }

    private void setCaptionRowCount(int i11) {
        this.captionRowCount = i11;
        this.currentCueBuilder.setCaptionRowCount(i11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder
    protected Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle(list);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder
    protected void decode(SubtitleInputBuffer subtitleInputBuffer) {
        int i11;
        this.ccData.reset(subtitleInputBuffer.data.array(), subtitleInputBuffer.data.limit());
        boolean z10 = false;
        boolean zHandleCtrl = false;
        while (true) {
            int iBytesLeft = this.ccData.bytesLeft();
            int i12 = this.packetLength;
            if (iBytesLeft < i12) {
                break;
            }
            byte unsignedByte = i12 == 2 ? CC_IMPLICIT_DATA_HEADER : (byte) this.ccData.readUnsignedByte();
            byte unsignedByte2 = (byte) (this.ccData.readUnsignedByte() & 127);
            byte unsignedByte3 = (byte) (this.ccData.readUnsignedByte() & 127);
            if ((unsignedByte & 6) == 4 && ((i11 = this.selectedField) != 1 || (unsignedByte & 1) == 0)) {
                if (i11 != 2 || (unsignedByte & 1) == 1) {
                    if (unsignedByte2 != 0 || unsignedByte3 != 0) {
                        if ((unsignedByte2 & 247) == 17 && (unsignedByte3 & 240) == 48) {
                            this.currentCueBuilder.append(getSpecialChar(unsignedByte3));
                        } else if ((unsignedByte2 & 246) == 18 && (unsignedByte3 & 224) == 32) {
                            this.currentCueBuilder.backspace();
                            if ((unsignedByte2 & 1) == 0) {
                                this.currentCueBuilder.append(getExtendedEsFrChar(unsignedByte3));
                            } else {
                                this.currentCueBuilder.append(getExtendedPtDeChar(unsignedByte3));
                            }
                        } else if ((unsignedByte2 & 224) == 0) {
                            zHandleCtrl = handleCtrl(unsignedByte2, unsignedByte3);
                        } else {
                            this.currentCueBuilder.append(getChar(unsignedByte2));
                            if ((unsignedByte3 & 224) != 0) {
                                this.currentCueBuilder.append(getChar(unsignedByte3));
                            }
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            if (!zHandleCtrl) {
                this.repeatableControlSet = false;
            }
            int i13 = this.captionMode;
            if (i13 == 1 || i13 == 3) {
                this.cues = getDisplayCues();
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder, com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder, com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder, com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        setCaptionMode(0);
        setCaptionRowCount(4);
        resetCueBuilders();
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder, com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public String getName() {
        return "Cea608Decoder";
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder
    protected boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder, com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public void release() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaDecoder, com.mbridge.msdk.playercommon.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j11) {
        super.setPositionUs(j11);
    }
}
