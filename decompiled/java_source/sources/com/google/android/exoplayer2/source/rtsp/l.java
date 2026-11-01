package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f26439d;

    public l(int i11, String str, String str2, String str3) {
        this.f26436a = i11;
        this.f26437b = str;
        this.f26438c = str2;
        this.f26439d = str3;
    }

    private String b(y.a aVar) {
        String str = aVar.f26519a;
        String str2 = aVar.f26520b;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append(":");
        sb2.append(str2);
        return Base64.encodeToString(y.c(sb2.toString()), 0);
    }

    private String c(y.a aVar, Uri uri, int i11) throws ParserException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            String strS = y.s(i11);
            String str = aVar.f26519a;
            String str2 = this.f26437b;
            String str3 = aVar.f26520b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
            sb2.append(str);
            sb2.append(":");
            sb2.append(str2);
            sb2.append(":");
            sb2.append(str3);
            String strZ0 = p0.Z0(messageDigest.digest(y.c(sb2.toString())));
            String strValueOf = String.valueOf(uri);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strS).length() + 1 + strValueOf.length());
            sb3.append(strS);
            sb3.append(":");
            sb3.append(strValueOf);
            String strZ1 = p0.Z0(messageDigest.digest(y.c(sb3.toString())));
            String str4 = this.f26438c;
            StringBuilder sb4 = new StringBuilder(String.valueOf(strZ0).length() + 2 + String.valueOf(str4).length() + String.valueOf(strZ1).length());
            sb4.append(strZ0);
            sb4.append(":");
            sb4.append(str4);
            sb4.append(":");
            sb4.append(strZ1);
            String strZ2 = p0.Z0(messageDigest.digest(y.c(sb4.toString())));
            return this.f26439d.isEmpty() ? p0.C("Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\"", aVar.f26519a, this.f26437b, this.f26438c, uri, strZ2) : p0.C("Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\"", aVar.f26519a, this.f26437b, this.f26438c, uri, strZ2, this.f26439d);
        } catch (NoSuchAlgorithmException e11) {
            throw ParserException.createForManifestWithUnsupportedFeature(null, e11);
        }
    }

    public String a(y.a aVar, Uri uri, int i11) throws ParserException {
        int i12 = this.f26436a;
        if (i12 == 1) {
            return b(aVar);
        }
        if (i12 == 2) {
            return c(aVar, uri, i11);
        }
        throw ParserException.createForManifestWithUnsupportedFeature(null, new UnsupportedOperationException());
    }
}
