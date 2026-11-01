package com.alibaba.sdk.android.oss.model;

/* JADX INFO: loaded from: classes2.dex */
public class Range {
    public static final long INFINITE = -1;
    private long begin;
    private long end;

    public Range(long j11, long j12) {
        setBegin(j11);
        setEnd(j12);
    }

    public boolean checkIsValid() {
        long j11 = this.begin;
        if (j11 >= -1) {
            long j12 = this.end;
            if (j12 >= -1) {
                return j11 < 0 || j12 < 0 || j11 <= j12;
            }
        }
        return false;
    }

    public long getBegin() {
        return this.begin;
    }

    public long getEnd() {
        return this.end;
    }

    public void setBegin(long j11) {
        this.begin = j11;
    }

    public void setEnd(long j11) {
        this.end = j11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bytes=");
        long j11 = this.begin;
        sb2.append(j11 == -1 ? "" : String.valueOf(j11));
        sb2.append("-");
        long j12 = this.end;
        sb2.append(j12 != -1 ? String.valueOf(j12) : "");
        return sb2.toString();
    }
}
