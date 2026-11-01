package com.aliyun.player.nativeclass;

/* JADX INFO: loaded from: classes2.dex */
public class TrackInfo {
    public static final int AUTO_SELECT_INDEX = -1;
    public int audioChannels;
    public String audioLang;
    public int audioSampleFormat;
    public int audioSampleRate;
    public String description;
    public int index;
    public String subtitleLang;
    public int videoBitrate;
    public int videoHeight;
    public int videoWidth;
    public String vodDefinition;
    public long vodFileSize;
    public String vodFormat;
    public String vodPlayUrl;
    public String vodWaterMarkPlayUrl;
    public Type mType = Type.TYPE_VOD;
    public VideoHDRType videoHDRType = VideoHDRType.VideoHDRType_SDR;

    public enum Type {
        TYPE_VIDEO,
        TYPE_AUDIO,
        TYPE_SUBTITLE,
        TYPE_VOD
    }

    public enum VideoHDRType {
        VideoHDRType_SDR,
        VideoHDRType_HDR10
    }

    private int nGetType() {
        return this.mType.ordinal();
    }

    private void setType(int i11) {
        Type type = Type.TYPE_VIDEO;
        if (i11 == type.ordinal()) {
            this.mType = type;
            return;
        }
        Type type2 = Type.TYPE_AUDIO;
        if (i11 == type2.ordinal()) {
            this.mType = type2;
            return;
        }
        Type type3 = Type.TYPE_SUBTITLE;
        if (i11 == type3.ordinal()) {
            this.mType = type3;
            return;
        }
        Type type4 = Type.TYPE_VOD;
        if (i11 == type4.ordinal()) {
            this.mType = type4;
        }
    }

    public int getAudioChannels() {
        return this.audioChannels;
    }

    public String getAudioLang() {
        return this.audioLang;
    }

    public int getAudioSampleFormat() {
        return this.audioSampleFormat;
    }

    public int getAudioSampleRate() {
        return this.audioSampleRate;
    }

    public String getDescription() {
        return this.description;
    }

    public int getIndex() {
        return this.index;
    }

    public String getSubtitleLang() {
        return this.subtitleLang;
    }

    public Type getType() {
        return this.mType;
    }

    public int getVideoBitrate() {
        return this.videoBitrate;
    }

    public int getVideoHDRType() {
        return this.videoHDRType.ordinal();
    }

    public int getVideoHeight() {
        return this.videoHeight;
    }

    public int getVideoWidth() {
        return this.videoWidth;
    }

    public String getVodDefinition() {
        return this.vodDefinition;
    }

    public long getVodFileSize() {
        return this.vodFileSize;
    }

    public String getVodFormat() {
        return this.vodFormat;
    }

    public String getVodPlayUrl() {
        return this.vodPlayUrl;
    }

    public String getVodWaterMarkPlayUrl() {
        return this.vodWaterMarkPlayUrl;
    }

    public void setVideoHDRType(int i11) {
        VideoHDRType videoHDRType = VideoHDRType.VideoHDRType_SDR;
        if (i11 == videoHDRType.ordinal()) {
            this.videoHDRType = videoHDRType;
            return;
        }
        VideoHDRType videoHDRType2 = VideoHDRType.VideoHDRType_HDR10;
        if (i11 == videoHDRType2.ordinal()) {
            this.videoHDRType = videoHDRType2;
        }
    }
}
