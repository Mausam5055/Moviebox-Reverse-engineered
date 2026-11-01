package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f8778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f8779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f8780c;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WireFormat.FieldType f8781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f8782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WireFormat.FieldType f8783c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Object f8784d;

        public a(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
            this.f8781a = fieldType;
            this.f8782b = obj;
            this.f8783c = fieldType2;
            this.f8784d = obj2;
        }
    }

    private h0(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
        this.f8778a = new a(fieldType, obj, fieldType2, obj2);
        this.f8779b = obj;
        this.f8780c = obj2;
    }

    static int b(a aVar, Object obj, Object obj2) {
        return s.b(aVar.f8781a, 1, obj) + s.b(aVar.f8783c, 2, obj2);
    }

    public static h0 d(WireFormat.FieldType fieldType, Object obj, WireFormat.FieldType fieldType2, Object obj2) {
        return new h0(fieldType, obj, fieldType2, obj2);
    }

    static void e(CodedOutputStream codedOutputStream, a aVar, Object obj, Object obj2) {
        s.w(codedOutputStream, aVar.f8781a, 1, obj);
        s.w(codedOutputStream, aVar.f8783c, 2, obj2);
    }

    public int a(int i11, Object obj, Object obj2) {
        return CodedOutputStream.S(i11) + CodedOutputStream.C(b(this.f8778a, obj, obj2));
    }

    a c() {
        return this.f8778a;
    }
}
