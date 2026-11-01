package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public class MethodHandle extends v.a.AbstractC0583a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MethodHandleType f40564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f40565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f40566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f40567e;

    public enum MethodHandleType {
        METHOD_HANDLE_TYPE_STATIC_PUT(0),
        METHOD_HANDLE_TYPE_STATIC_GET(1),
        METHOD_HANDLE_TYPE_INSTANCE_PUT(2),
        METHOD_HANDLE_TYPE_INSTANCE_GET(3),
        METHOD_HANDLE_TYPE_INVOKE_STATIC(4),
        METHOD_HANDLE_TYPE_INVOKE_INSTANCE(5),
        METHOD_HANDLE_TYPE_INVOKE_DIRECT(6),
        METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR(7),
        METHOD_HANDLE_TYPE_INVOKE_INTERFACE(8);

        public final int value;

        MethodHandleType(int i11) {
            this.value = i11;
        }

        public static MethodHandleType fromValue(int i11) {
            for (MethodHandleType methodHandleType : values()) {
                if (methodHandleType.value == i11) {
                    return methodHandleType;
                }
            }
            throw new IllegalArgumentException(String.valueOf(i11));
        }

        public boolean isField() {
            int i11 = a.f40568a[ordinal()];
            return i11 == 1 || i11 == 2 || i11 == 3 || i11 == 4;
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f40568a;

        static {
            int[] iArr = new int[MethodHandleType.values().length];
            f40568a = iArr;
            try {
                iArr[MethodHandleType.METHOD_HANDLE_TYPE_STATIC_PUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40568a[MethodHandleType.METHOD_HANDLE_TYPE_STATIC_GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40568a[MethodHandleType.METHOD_HANDLE_TYPE_INSTANCE_PUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40568a[MethodHandleType.METHOD_HANDLE_TYPE_INSTANCE_GET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MethodHandle(int i11, MethodHandleType methodHandleType, int i12, int i13, int i14) {
        super(i11);
        this.f40564b = methodHandleType;
        this.f40565c = i12;
        this.f40566d = i13;
        this.f40567e = i14;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(MethodHandle methodHandle) {
        MethodHandleType methodHandleType = this.f40564b;
        MethodHandleType methodHandleType2 = methodHandle.f40564b;
        return methodHandleType != methodHandleType2 ? methodHandleType.compareTo(methodHandleType2) : gf.c.h(this.f40566d, methodHandle.f40566d);
    }
}
