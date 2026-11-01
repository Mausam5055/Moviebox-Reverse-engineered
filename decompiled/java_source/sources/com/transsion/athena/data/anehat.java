package com.transsion.athena.data;

import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class anehat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f42687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f42688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<athena> f42689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f42690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f42691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f42692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f42693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f42694h;

    public static class athena {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f42695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f42696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f42697c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f42698d;

        public athena(String str, long j11, int i11, String str2) {
            this.f42695a = str;
            this.f42696b = j11;
            this.f42698d = i11;
            this.f42697c = str2;
        }

        public String toString() {
            return "TidEvent{event='" + this.f42695a + "', ts=" + this.f42696b + '}';
        }
    }

    public anehat(long j11, String str, List<athena> list, long j12, long j13, int i11, int i12, boolean z10) {
        this.f42687a = j11;
        this.f42689c = list;
        this.f42688b = str;
        this.f42690d = j12;
        this.f42691e = j13;
        this.f42692f = i11;
        this.f42693g = i12;
        this.f42694h = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof anehat) && this.f42687a == ((anehat) obj).f42687a;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f42687a), this.f42689c, Long.valueOf(this.f42690d), Long.valueOf(this.f42691e), Integer.valueOf(this.f42692f), Integer.valueOf(this.f42693g), Boolean.valueOf(this.f42694h));
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<athena> it = this.f42689c.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
        }
        return "TidEventSet{tid=" + this.f42687a + ", event='" + this.f42688b + "', eventList=" + ((Object) sb2) + ", eventCount=" + this.f42692f + '}';
    }
}
