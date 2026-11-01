package com.cicada.player.utils.ass;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class AssHeader {
    public String mEventFormat;
    public String mStyleFormat;
    public Map<String, AssStyle> mStyles = null;
    public SubtitleType mType = SubtitleType.SubtitleTypeUnknown;
    public int mPlayResX = 0;
    public int mPlayResY = 0;
    public double mTimer = 0.0d;
    public int mWrapStyle = 0;
    public int mScaledBorderAndShadow = 0;

    public enum SubtitleType {
        SubtitleTypeUnknown,
        SubtitleTypeAss,
        SubtitleTypeSsa
    }

    private Object getStyles() {
        return this.mStyles;
    }

    private int getType() {
        SubtitleType subtitleType = this.mType;
        if (subtitleType == SubtitleType.SubtitleTypeUnknown) {
            return 0;
        }
        if (subtitleType == SubtitleType.SubtitleTypeAss) {
            return 1;
        }
        return subtitleType == SubtitleType.SubtitleTypeSsa ? 2 : 0;
    }

    private void setStyles(Object obj) {
        this.mStyles = (Map) obj;
    }

    private void setType(int i11) {
        if (i11 == 0) {
            this.mType = SubtitleType.SubtitleTypeUnknown;
        } else if (i11 == 1) {
            this.mType = SubtitleType.SubtitleTypeAss;
        } else if (i11 == 2) {
            this.mType = SubtitleType.SubtitleTypeSsa;
        }
    }
}
