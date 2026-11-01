package androidx.emoji2.text.flatbuffer;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class FlexBuffersBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f9076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f9077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f9078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap f9079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Comparator f9082g;

    private static class a {
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    public FlexBuffersBuilder(int i11) {
        this(new androidx.emoji2.text.flatbuffer.a(i11), 1);
    }

    public FlexBuffersBuilder(d dVar, int i11) {
        this.f9077b = new ArrayList();
        this.f9078c = new HashMap();
        this.f9079d = new HashMap();
        this.f9081f = false;
        this.f9082g = new Comparator<a>() { // from class: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder.1
            /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
            public int compare2(a aVar, a aVar2) {
                throw null;
            }

            @Override // java.util.Comparator
            public /* bridge */ /* synthetic */ int compare(a aVar, a aVar2) {
                android.support.v4.media.session.c.a(aVar);
                android.support.v4.media.session.c.a(aVar2);
                return compare2((a) null, (a) null);
            }
        };
        this.f9076a = dVar;
        this.f9080e = i11;
    }
}
