package com.aliyun.player.source;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StsInfo {
    private String mAccessKeyId;
    private String mAccessKeySecret;
    private List<MediaFormat> mFormats;
    private String mRegion;
    private String mSecurityToken;

    private String getFormatStr() {
        List<MediaFormat> list = this.mFormats;
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder("");
        for (MediaFormat mediaFormat : this.mFormats) {
            if (mediaFormat != null) {
                sb2.append(mediaFormat.getFormat());
                sb2.append(",");
            }
        }
        if (sb2.length() > 1) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    public String getAccessKeyId() {
        return this.mAccessKeyId;
    }

    public String getAccessKeySecret() {
        return this.mAccessKeySecret;
    }

    public List<MediaFormat> getFormats() {
        return this.mFormats;
    }

    public String getRegion() {
        return this.mRegion;
    }

    public String getSecurityToken() {
        return this.mSecurityToken;
    }

    public void setAccessKeyId(String str) {
        this.mAccessKeyId = str;
    }

    public void setAccessKeySecret(String str) {
        this.mAccessKeySecret = str;
    }

    public void setFormats(List<MediaFormat> list) {
        this.mFormats = list;
    }

    public void setRegion(String str) {
        this.mRegion = str;
    }

    public void setSecurityToken(String str) {
        this.mSecurityToken = str;
    }
}
