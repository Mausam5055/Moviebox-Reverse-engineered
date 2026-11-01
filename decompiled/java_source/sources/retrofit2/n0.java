package retrofit2;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes7.dex */
final class n0 implements m0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final m0 f74490b = new n0();

    n0() {
    }

    static Annotation[] a(Annotation[] annotationArr) {
        if (o0.l(annotationArr, m0.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = f74490b;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override // java.lang.annotation.Annotation
    public Class annotationType() {
        return m0.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        return obj instanceof m0;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        return "@" + m0.class.getName() + "()";
    }
}
