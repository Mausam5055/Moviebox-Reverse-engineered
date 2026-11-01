package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import la.o;

/* JADX INFO: loaded from: classes3.dex */
public class TrackSelectionParameters implements k {
    public static final TrackSelectionParameters A;
    public static final TrackSelectionParameters B;
    public static final k.a C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f26731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f26733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f26734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f26735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f26736i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f26737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f26738k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImmutableList f26739l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f26740m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ImmutableList f26741n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f26742o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f26743p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f26744q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ImmutableList f26745r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ImmutableList f26746s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f26747t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f26748u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f26749v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f26750w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f26751x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final ImmutableMap f26752y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ImmutableSet f26753z;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f26754a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f26755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f26756c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f26757d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f26758e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f26759f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f26760g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f26761h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f26762i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f26763j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f26764k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private ImmutableList f26765l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f26766m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ImmutableList f26767n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f26768o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f26769p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f26770q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private ImmutableList f26771r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private ImmutableList f26772s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f26773t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f26774u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private boolean f26775v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private boolean f26776w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private boolean f26777x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private HashMap f26778y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private HashSet f26779z;

        @Deprecated
        public Builder() {
            this.f26754a = Integer.MAX_VALUE;
            this.f26755b = Integer.MAX_VALUE;
            this.f26756c = Integer.MAX_VALUE;
            this.f26757d = Integer.MAX_VALUE;
            this.f26762i = Integer.MAX_VALUE;
            this.f26763j = Integer.MAX_VALUE;
            this.f26764k = true;
            this.f26765l = ImmutableList.of();
            this.f26766m = 0;
            this.f26767n = ImmutableList.of();
            this.f26768o = 0;
            this.f26769p = Integer.MAX_VALUE;
            this.f26770q = Integer.MAX_VALUE;
            this.f26771r = ImmutableList.of();
            this.f26772s = ImmutableList.of();
            this.f26773t = 0;
            this.f26774u = 0;
            this.f26775v = false;
            this.f26776w = false;
            this.f26777x = false;
            this.f26778y = new HashMap();
            this.f26779z = new HashSet();
        }

        public Builder(Context context) {
            this();
            F(context);
            I(context, true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected Builder(Bundle bundle) {
            String strC = TrackSelectionParameters.c(6);
            TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.A;
            this.f26754a = bundle.getInt(strC, trackSelectionParameters.f26728a);
            this.f26755b = bundle.getInt(TrackSelectionParameters.c(7), trackSelectionParameters.f26729b);
            this.f26756c = bundle.getInt(TrackSelectionParameters.c(8), trackSelectionParameters.f26730c);
            this.f26757d = bundle.getInt(TrackSelectionParameters.c(9), trackSelectionParameters.f26731d);
            this.f26758e = bundle.getInt(TrackSelectionParameters.c(10), trackSelectionParameters.f26732e);
            this.f26759f = bundle.getInt(TrackSelectionParameters.c(11), trackSelectionParameters.f26733f);
            this.f26760g = bundle.getInt(TrackSelectionParameters.c(12), trackSelectionParameters.f26734g);
            this.f26761h = bundle.getInt(TrackSelectionParameters.c(13), trackSelectionParameters.f26735h);
            this.f26762i = bundle.getInt(TrackSelectionParameters.c(14), trackSelectionParameters.f26736i);
            this.f26763j = bundle.getInt(TrackSelectionParameters.c(15), trackSelectionParameters.f26737j);
            this.f26764k = bundle.getBoolean(TrackSelectionParameters.c(16), trackSelectionParameters.f26738k);
            this.f26765l = ImmutableList.copyOf((String[]) com.google.common.base.h.a(bundle.getStringArray(TrackSelectionParameters.c(17)), new String[0]));
            this.f26766m = bundle.getInt(TrackSelectionParameters.c(25), trackSelectionParameters.f26740m);
            this.f26767n = C((String[]) com.google.common.base.h.a(bundle.getStringArray(TrackSelectionParameters.c(1)), new String[0]));
            this.f26768o = bundle.getInt(TrackSelectionParameters.c(2), trackSelectionParameters.f26742o);
            this.f26769p = bundle.getInt(TrackSelectionParameters.c(18), trackSelectionParameters.f26743p);
            this.f26770q = bundle.getInt(TrackSelectionParameters.c(19), trackSelectionParameters.f26744q);
            this.f26771r = ImmutableList.copyOf((String[]) com.google.common.base.h.a(bundle.getStringArray(TrackSelectionParameters.c(20)), new String[0]));
            this.f26772s = C((String[]) com.google.common.base.h.a(bundle.getStringArray(TrackSelectionParameters.c(3)), new String[0]));
            this.f26773t = bundle.getInt(TrackSelectionParameters.c(4), trackSelectionParameters.f26747t);
            this.f26774u = bundle.getInt(TrackSelectionParameters.c(26), trackSelectionParameters.f26748u);
            this.f26775v = bundle.getBoolean(TrackSelectionParameters.c(5), trackSelectionParameters.f26749v);
            this.f26776w = bundle.getBoolean(TrackSelectionParameters.c(21), trackSelectionParameters.f26750w);
            this.f26777x = bundle.getBoolean(TrackSelectionParameters.c(22), trackSelectionParameters.f26751x);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(TrackSelectionParameters.c(23));
            ImmutableList immutableListOf = parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(o.f68795c, parcelableArrayList);
            this.f26778y = new HashMap();
            for (int i11 = 0; i11 < immutableListOf.size(); i11++) {
                o oVar = (o) immutableListOf.get(i11);
                this.f26778y.put(oVar.f68796a, oVar);
            }
            int[] iArr = (int[]) com.google.common.base.h.a(bundle.getIntArray(TrackSelectionParameters.c(24)), new int[0]);
            this.f26779z = new HashSet();
            for (int i12 : iArr) {
                this.f26779z.add(Integer.valueOf(i12));
            }
        }

        protected Builder(TrackSelectionParameters trackSelectionParameters) {
            B(trackSelectionParameters);
        }

        private void B(TrackSelectionParameters trackSelectionParameters) {
            this.f26754a = trackSelectionParameters.f26728a;
            this.f26755b = trackSelectionParameters.f26729b;
            this.f26756c = trackSelectionParameters.f26730c;
            this.f26757d = trackSelectionParameters.f26731d;
            this.f26758e = trackSelectionParameters.f26732e;
            this.f26759f = trackSelectionParameters.f26733f;
            this.f26760g = trackSelectionParameters.f26734g;
            this.f26761h = trackSelectionParameters.f26735h;
            this.f26762i = trackSelectionParameters.f26736i;
            this.f26763j = trackSelectionParameters.f26737j;
            this.f26764k = trackSelectionParameters.f26738k;
            this.f26765l = trackSelectionParameters.f26739l;
            this.f26766m = trackSelectionParameters.f26740m;
            this.f26767n = trackSelectionParameters.f26741n;
            this.f26768o = trackSelectionParameters.f26742o;
            this.f26769p = trackSelectionParameters.f26743p;
            this.f26770q = trackSelectionParameters.f26744q;
            this.f26771r = trackSelectionParameters.f26745r;
            this.f26772s = trackSelectionParameters.f26746s;
            this.f26773t = trackSelectionParameters.f26747t;
            this.f26774u = trackSelectionParameters.f26748u;
            this.f26775v = trackSelectionParameters.f26749v;
            this.f26776w = trackSelectionParameters.f26750w;
            this.f26777x = trackSelectionParameters.f26751x;
            this.f26779z = new HashSet(trackSelectionParameters.f26753z);
            this.f26778y = new HashMap(trackSelectionParameters.f26752y);
        }

        private static ImmutableList C(String[] strArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (String str : (String[]) com.google.android.exoplayer2.util.a.e(strArr)) {
                aVarBuilder.a(p0.D0((String) com.google.android.exoplayer2.util.a.e(str)));
            }
            return aVarBuilder.e();
        }

        private void G(Context context) {
            CaptioningManager captioningManager;
            if ((p0.f27626a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f26773t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f26772s = ImmutableList.of(p0.Y(locale));
                }
            }
        }

        public TrackSelectionParameters A() {
            return new TrackSelectionParameters(this);
        }

        protected Builder D(TrackSelectionParameters trackSelectionParameters) {
            B(trackSelectionParameters);
            return this;
        }

        public Builder E(Set set) {
            this.f26779z.clear();
            this.f26779z.addAll(set);
            return this;
        }

        public Builder F(Context context) {
            if (p0.f27626a >= 19) {
                G(context);
            }
            return this;
        }

        public Builder H(int i11, int i12, boolean z10) {
            this.f26762i = i11;
            this.f26763j = i12;
            this.f26764k = z10;
            return this;
        }

        public Builder I(Context context, boolean z10) {
            Point pointO = p0.O(context);
            return H(pointO.x, pointO.y, z10);
        }
    }

    static {
        TrackSelectionParameters trackSelectionParametersA = new Builder().A();
        A = trackSelectionParametersA;
        B = trackSelectionParametersA;
        C = new k.a() { // from class: la.p
            @Override // com.google.android.exoplayer2.k.a
            public final com.google.android.exoplayer2.k a(Bundle bundle) {
                return TrackSelectionParameters.b(bundle);
            }
        };
    }

    protected TrackSelectionParameters(Builder builder) {
        this.f26728a = builder.f26754a;
        this.f26729b = builder.f26755b;
        this.f26730c = builder.f26756c;
        this.f26731d = builder.f26757d;
        this.f26732e = builder.f26758e;
        this.f26733f = builder.f26759f;
        this.f26734g = builder.f26760g;
        this.f26735h = builder.f26761h;
        this.f26736i = builder.f26762i;
        this.f26737j = builder.f26763j;
        this.f26738k = builder.f26764k;
        this.f26739l = builder.f26765l;
        this.f26740m = builder.f26766m;
        this.f26741n = builder.f26767n;
        this.f26742o = builder.f26768o;
        this.f26743p = builder.f26769p;
        this.f26744q = builder.f26770q;
        this.f26745r = builder.f26771r;
        this.f26746s = builder.f26772s;
        this.f26747t = builder.f26773t;
        this.f26748u = builder.f26774u;
        this.f26749v = builder.f26775v;
        this.f26750w = builder.f26776w;
        this.f26751x = builder.f26777x;
        this.f26752y = ImmutableMap.copyOf((Map) builder.f26778y);
        this.f26753z = ImmutableSet.copyOf((Collection) builder.f26779z);
    }

    public static TrackSelectionParameters b(Bundle bundle) {
        return new Builder(bundle).A();
    }

    protected static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    public Builder a() {
        return new Builder(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        return this.f26728a == trackSelectionParameters.f26728a && this.f26729b == trackSelectionParameters.f26729b && this.f26730c == trackSelectionParameters.f26730c && this.f26731d == trackSelectionParameters.f26731d && this.f26732e == trackSelectionParameters.f26732e && this.f26733f == trackSelectionParameters.f26733f && this.f26734g == trackSelectionParameters.f26734g && this.f26735h == trackSelectionParameters.f26735h && this.f26738k == trackSelectionParameters.f26738k && this.f26736i == trackSelectionParameters.f26736i && this.f26737j == trackSelectionParameters.f26737j && this.f26739l.equals(trackSelectionParameters.f26739l) && this.f26740m == trackSelectionParameters.f26740m && this.f26741n.equals(trackSelectionParameters.f26741n) && this.f26742o == trackSelectionParameters.f26742o && this.f26743p == trackSelectionParameters.f26743p && this.f26744q == trackSelectionParameters.f26744q && this.f26745r.equals(trackSelectionParameters.f26745r) && this.f26746s.equals(trackSelectionParameters.f26746s) && this.f26747t == trackSelectionParameters.f26747t && this.f26748u == trackSelectionParameters.f26748u && this.f26749v == trackSelectionParameters.f26749v && this.f26750w == trackSelectionParameters.f26750w && this.f26751x == trackSelectionParameters.f26751x && this.f26752y.equals(trackSelectionParameters.f26752y) && this.f26753z.equals(trackSelectionParameters.f26753z);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.f26728a + 31) * 31) + this.f26729b) * 31) + this.f26730c) * 31) + this.f26731d) * 31) + this.f26732e) * 31) + this.f26733f) * 31) + this.f26734g) * 31) + this.f26735h) * 31) + (this.f26738k ? 1 : 0)) * 31) + this.f26736i) * 31) + this.f26737j) * 31) + this.f26739l.hashCode()) * 31) + this.f26740m) * 31) + this.f26741n.hashCode()) * 31) + this.f26742o) * 31) + this.f26743p) * 31) + this.f26744q) * 31) + this.f26745r.hashCode()) * 31) + this.f26746s.hashCode()) * 31) + this.f26747t) * 31) + this.f26748u) * 31) + (this.f26749v ? 1 : 0)) * 31) + (this.f26750w ? 1 : 0)) * 31) + (this.f26751x ? 1 : 0)) * 31) + this.f26752y.hashCode()) * 31) + this.f26753z.hashCode();
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(6), this.f26728a);
        bundle.putInt(c(7), this.f26729b);
        bundle.putInt(c(8), this.f26730c);
        bundle.putInt(c(9), this.f26731d);
        bundle.putInt(c(10), this.f26732e);
        bundle.putInt(c(11), this.f26733f);
        bundle.putInt(c(12), this.f26734g);
        bundle.putInt(c(13), this.f26735h);
        bundle.putInt(c(14), this.f26736i);
        bundle.putInt(c(15), this.f26737j);
        bundle.putBoolean(c(16), this.f26738k);
        bundle.putStringArray(c(17), (String[]) this.f26739l.toArray(new String[0]));
        bundle.putInt(c(25), this.f26740m);
        bundle.putStringArray(c(1), (String[]) this.f26741n.toArray(new String[0]));
        bundle.putInt(c(2), this.f26742o);
        bundle.putInt(c(18), this.f26743p);
        bundle.putInt(c(19), this.f26744q);
        bundle.putStringArray(c(20), (String[]) this.f26745r.toArray(new String[0]));
        bundle.putStringArray(c(3), (String[]) this.f26746s.toArray(new String[0]));
        bundle.putInt(c(4), this.f26747t);
        bundle.putInt(c(26), this.f26748u);
        bundle.putBoolean(c(5), this.f26749v);
        bundle.putBoolean(c(21), this.f26750w);
        bundle.putBoolean(c(22), this.f26751x);
        bundle.putParcelableArrayList(c(23), com.google.android.exoplayer2.util.d.d(this.f26752y.values()));
        bundle.putIntArray(c(24), Ints.o(this.f26753z));
        return bundle;
    }
}
