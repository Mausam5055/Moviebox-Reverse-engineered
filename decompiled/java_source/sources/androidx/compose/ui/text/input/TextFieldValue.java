package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SaversKt;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldValue {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f6201d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6202e = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, TextFieldValue, Object>() { // from class: androidx.compose.ui.text.input.TextFieldValue$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, TextFieldValue textFieldValue) {
            return CollectionsKt.h(SaversKt.y(textFieldValue.c(), SaversKt.h(), eVar), SaversKt.y(androidx.compose.ui.text.b0.b(textFieldValue.e()), SaversKt.l(androidx.compose.ui.text.b0.f6083b), eVar));
        }
    }, new Function1<Object, TextFieldValue>() { // from class: androidx.compose.ui.text.input.TextFieldValue$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final TextFieldValue invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.runtime.saveable.d dVarH = SaversKt.h();
            Boolean bool = Boolean.FALSE;
            androidx.compose.ui.text.b0 b0Var = null;
            AnnotatedString annotatedString = ((!Intrinsics.c(obj2, bool) || (dVarH instanceof androidx.compose.ui.text.j)) && obj2 != null) ? (AnnotatedString) dVarH.b(obj2) : null;
            Intrinsics.e(annotatedString);
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarL = SaversKt.l(androidx.compose.ui.text.b0.f6083b);
            if ((!Intrinsics.c(obj3, bool) || (dVarL instanceof androidx.compose.ui.text.j)) && obj3 != null) {
                b0Var = (androidx.compose.ui.text.b0) dVarL.b(obj3);
            }
            Intrinsics.e(b0Var);
            return new TextFieldValue(annotatedString, b0Var.n(), (androidx.compose.ui.text.b0) null, 4, (DefaultConstructorMarker) null);
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AnnotatedString f6203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f6204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.compose.ui.text.b0 f6205c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private TextFieldValue(AnnotatedString annotatedString, long j11, androidx.compose.ui.text.b0 b0Var) {
        this.f6203a = annotatedString;
        this.f6204b = androidx.compose.ui.text.c0.c(j11, 0, f().length());
        this.f6205c = b0Var != null ? androidx.compose.ui.text.b0.b(androidx.compose.ui.text.c0.c(b0Var.n(), 0, f().length())) : null;
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j11, androidx.compose.ui.text.b0 b0Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, (i11 & 2) != 0 ? androidx.compose.ui.text.b0.f6083b.a() : j11, (i11 & 4) != 0 ? null : b0Var, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j11, androidx.compose.ui.text.b0 b0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j11, b0Var);
    }

    private TextFieldValue(String str, long j11, androidx.compose.ui.text.b0 b0Var) {
        this(new AnnotatedString(str, null, null, 6, null), j11, b0Var, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ TextFieldValue(String str, long j11, androidx.compose.ui.text.b0 b0Var, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? androidx.compose.ui.text.b0.f6083b.a() : j11, (i11 & 4) != 0 ? null : b0Var, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ TextFieldValue(String str, long j11, androidx.compose.ui.text.b0 b0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j11, b0Var);
    }

    public static /* synthetic */ TextFieldValue b(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j11, androidx.compose.ui.text.b0 b0Var, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            annotatedString = textFieldValue.f6203a;
        }
        if ((i11 & 2) != 0) {
            j11 = textFieldValue.f6204b;
        }
        if ((i11 & 4) != 0) {
            b0Var = textFieldValue.f6205c;
        }
        return textFieldValue.a(annotatedString, j11, b0Var);
    }

    public final TextFieldValue a(AnnotatedString annotatedString, long j11, androidx.compose.ui.text.b0 b0Var) {
        return new TextFieldValue(annotatedString, j11, b0Var, (DefaultConstructorMarker) null);
    }

    public final AnnotatedString c() {
        return this.f6203a;
    }

    public final androidx.compose.ui.text.b0 d() {
        return this.f6205c;
    }

    public final long e() {
        return this.f6204b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return androidx.compose.ui.text.b0.e(this.f6204b, textFieldValue.f6204b) && Intrinsics.c(this.f6205c, textFieldValue.f6205c) && Intrinsics.c(this.f6203a, textFieldValue.f6203a);
    }

    public final String f() {
        return this.f6203a.i();
    }

    public int hashCode() {
        int iHashCode = ((this.f6203a.hashCode() * 31) + androidx.compose.ui.text.b0.l(this.f6204b)) * 31;
        androidx.compose.ui.text.b0 b0Var = this.f6205c;
        return iHashCode + (b0Var != null ? androidx.compose.ui.text.b0.l(b0Var.n()) : 0);
    }

    public String toString() {
        return "TextFieldValue(text='" + ((Object) this.f6203a) + "', selection=" + ((Object) androidx.compose.ui.text.b0.m(this.f6204b)) + ", composition=" + this.f6205c + ')';
    }
}
