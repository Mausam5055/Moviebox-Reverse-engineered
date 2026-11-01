package com.transsion.athena.hatnea;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ehatna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f42778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f42779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f42780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Integer> f42781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f42782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f42783f;

    private ehatna(String str, byte[] bArr, int i11, List<Integer> list, String str2, String str3) {
        this.f42778a = str;
        this.f42779b = bArr;
        this.f42780c = i11;
        this.f42781d = list;
        this.f42782e = str2;
        this.f42783f = str3;
    }

    public static ehatna a(String str, byte[] bArr, int i11, List<Integer> list, String str2, String str3) {
        return new ehatna(str, bArr, i11, list, str2, str3);
    }

    public String toString() {
        return "UploadEventsRequest{host='" + this.f42778a + "', data=" + Arrays.toString(this.f42779b) + ", lineNumber=" + this.f42780c + ", appidList=" + this.f42781d + ", packetUid='" + this.f42782e + "', dupid='" + this.f42783f + "'}";
    }
}
