package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.o1;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o1 f26431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImmutableMap f26432d;

    public j(o1 o1Var, int i11, int i12, Map map) {
        this.f26429a = i11;
        this.f26430b = i12;
        this.f26431c = o1Var;
        this.f26432d = ImmutableMap.copyOf(map);
    }

    public static String a(String str) {
        String strG = com.google.common.base.a.g(str);
        strG.hashCode();
        switch (strG) {
            case "MPEG4-GENERIC":
                return MimeTypes.AUDIO_AAC;
            case "AC3":
                return MimeTypes.AUDIO_AC3;
            case "H264":
                return MimeTypes.VIDEO_H264;
            default:
                throw new IllegalArgumentException(str);
        }
    }

    public static boolean b(a aVar) {
        String strG = com.google.common.base.a.g(aVar.f26312j.f26323b);
        strG.hashCode();
        switch (strG) {
            case "MPEG4-GENERIC":
            case "AC3":
            case "H264":
                return true;
            default:
                return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f26429a == jVar.f26429a && this.f26430b == jVar.f26430b && this.f26431c.equals(jVar.f26431c) && this.f26432d.equals(jVar.f26432d);
    }

    public int hashCode() {
        return ((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f26429a) * 31) + this.f26430b) * 31) + this.f26431c.hashCode()) * 31) + this.f26432d.hashCode();
    }
}
