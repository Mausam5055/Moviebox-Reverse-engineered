package com.transsion.mbwidget.data;

import com.transsion.mbwidget.R$mipmap;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f46269a = new j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f46270b = MapsKt.l(TuplesKt.a("img_default_1", Integer.valueOf(R$mipmap.img_widget_subject_default_1)), TuplesKt.a("img_default_2", Integer.valueOf(R$mipmap.img_widget_subject_default_2)), TuplesKt.a("img_default_3", Integer.valueOf(R$mipmap.img_widget_subject_default_3)), TuplesKt.a("img_default_4", Integer.valueOf(R$mipmap.img_widget_subject_default_4)));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f46271c = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.e();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f46272d = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.f();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f46273e = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.g();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f46274f = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.h();
        }
    });

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Subject e() {
        return new Subject("8906247916759695608", null, "Avatar", null, new Cover(null, null, null, "img_default_1", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -22, 134217727, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Subject f() {
        return new Subject("4191963760367656968", null, "Avengers: Endgame", null, new Cover(null, null, null, "img_default_2", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -22, 134217727, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Subject g() {
        return new Subject("5390197429792821032", null, "Titanic", null, new Cover(null, null, null, "img_default_3", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -22, 134217727, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Subject h() {
        return new Subject("9155478106520576008", null, "The Lion King", null, new Cover(null, null, null, "img_default_4", null, null, null, null, null, 503, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -22, 134217727, null);
    }

    private final Subject i() {
        return (Subject) f46271c.getValue();
    }

    private final Subject j() {
        return (Subject) f46272d.getValue();
    }

    private final Subject k() {
        return (Subject) f46273e.getValue();
    }

    private final Subject l() {
        return (Subject) f46274f.getValue();
    }

    public final List m() {
        return CollectionsKt.q(i(), j(), k(), l());
    }

    public final Integer n(String str) {
        return (Integer) f46270b.get(str);
    }
}
