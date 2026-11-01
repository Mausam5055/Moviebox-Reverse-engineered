package bz;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends PasswordTransformationMethod {

    /* JADX INFO: renamed from: bz.a$a, reason: collision with other inner class name */
    private final class C0150a implements CharSequence {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CharSequence f16956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f16957b;

        public C0150a(a aVar, CharSequence mSource) {
            Intrinsics.h(mSource, "mSource");
            this.f16957b = aVar;
            this.f16956a = mSource;
        }

        public char a(int i11) {
            return '*';
        }

        public int b() {
            return this.f16956a.length();
        }

        @Override // java.lang.CharSequence
        public final /* bridge */ char charAt(int i11) {
            return a(i11);
        }

        @Override // java.lang.CharSequence
        public final /* bridge */ int length() {
            return b();
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i11, int i12) {
            return this.f16956a.subSequence(i11, i12);
        }
    }

    @Override // android.text.method.PasswordTransformationMethod, android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence source, View view) {
        Intrinsics.h(source, "source");
        Intrinsics.h(view, "view");
        return new C0150a(this, source);
    }
}
