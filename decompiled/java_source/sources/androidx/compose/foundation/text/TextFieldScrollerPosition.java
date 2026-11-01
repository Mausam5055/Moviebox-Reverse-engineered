package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.c1;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.p1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.ui.text.b0;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import y.i;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldScrollerPosition {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f3194f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f3195g = ListSaverKt.a(new Function2<androidx.compose.runtime.saveable.e, TextFieldScrollerPosition, List<? extends Object>>() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final List<Object> invoke(androidx.compose.runtime.saveable.e eVar, TextFieldScrollerPosition textFieldScrollerPosition) {
            return CollectionsKt.o(Float.valueOf(textFieldScrollerPosition.a()), Boolean.valueOf(textFieldScrollerPosition.b() == Orientation.Vertical));
        }
    }, new Function1<List<? extends Object>, TextFieldScrollerPosition>() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final TextFieldScrollerPosition invoke(List<? extends Object> list) {
            Object obj = list.get(1);
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Boolean");
            Orientation orientation = ((Boolean) obj).booleanValue() ? Orientation.Vertical : Orientation.Horizontal;
            Object obj2 = list.get(0);
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Float");
            return new TextFieldScrollerPosition(orientation, ((Float) obj2).floatValue());
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c1 f3196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c1 f3197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f3198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f3200e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public TextFieldScrollerPosition() {
        this(Orientation.Vertical, 0.0f, 2, null);
    }

    public TextFieldScrollerPosition(Orientation orientation, float f11) {
        this.f3196a = p1.a(f11);
        this.f3197b = p1.a(0.0f);
        this.f3198c = i.f78475e.a();
        this.f3199d = b0.f6083b.a();
        this.f3200e = r2.e(orientation, r2.j());
    }

    public /* synthetic */ TextFieldScrollerPosition(Orientation orientation, float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, (i11 & 2) != 0 ? 0.0f : f11);
    }

    public final float a() {
        return this.f3196a.getFloatValue();
    }

    public final Orientation b() {
        return (Orientation) this.f3200e.getValue();
    }
}
