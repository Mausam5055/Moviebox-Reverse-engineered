package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
final class l0 implements j1 {
    private static final r0 EMPTY_FACTORY = new a();
    private final r0 messageInfoFactory;

    class a implements r0 {
        a() {
        }

        @Override // com.google.protobuf.r0
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // com.google.protobuf.r0
        public q0 messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$ProtoSyntax;

        static {
            int[] iArr = new int[ProtoSyntax.values().length];
            $SwitchMap$com$google$protobuf$ProtoSyntax = iArr;
            try {
                iArr[ProtoSyntax.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private static class c implements r0 {
        private r0[] factories;

        c(r0... r0VarArr) {
            this.factories = r0VarArr;
        }

        @Override // com.google.protobuf.r0
        public boolean isSupported(Class<?> cls) {
            for (r0 r0Var : this.factories) {
                if (r0Var.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.r0
        public q0 messageInfoFor(Class<?> cls) {
            for (r0 r0Var : this.factories) {
                if (r0Var.isSupported(cls)) {
                    return r0Var.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }
    }

    public l0() {
        this(getDefaultMessageInfoFactory());
    }

    private l0(r0 r0Var) {
        this.messageInfoFactory = (r0) y.checkNotNull(r0Var, "messageInfoFactory");
    }

    private static boolean allowExtensions(q0 q0Var) {
        return b.$SwitchMap$com$google$protobuf$ProtoSyntax[q0Var.getSyntax().ordinal()] != 1;
    }

    private static r0 getDefaultMessageInfoFactory() {
        return new c(v.getInstance(), getDescriptorMessageInfoFactory());
    }

    private static r0 getDescriptorMessageInfoFactory() {
        try {
            return (r0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            return EMPTY_FACTORY;
        }
    }

    private static <T> i1 newSchema(Class<T> cls, q0 q0Var) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            return allowExtensions(q0Var) ? v0.newSchema(cls, q0Var, z0.lite(), j0.lite(), k1.unknownFieldSetLiteSchema(), r.lite(), p0.lite()) : v0.newSchema(cls, q0Var, z0.lite(), j0.lite(), k1.unknownFieldSetLiteSchema(), null, p0.lite());
        }
        return allowExtensions(q0Var) ? v0.newSchema(cls, q0Var, z0.full(), j0.full(), k1.unknownFieldSetFullSchema(), r.full(), p0.full()) : v0.newSchema(cls, q0Var, z0.full(), j0.full(), k1.unknownFieldSetFullSchema(), null, p0.full());
    }

    @Override // com.google.protobuf.j1
    public <T> i1 createSchema(Class<T> cls) {
        k1.requireGeneratedMessage(cls);
        q0 q0VarMessageInfoFor = this.messageInfoFactory.messageInfoFor(cls);
        if (q0VarMessageInfoFor.isMessageSetWireFormat()) {
            return GeneratedMessageLite.class.isAssignableFrom(cls) ? w0.newSchema(k1.unknownFieldSetLiteSchema(), r.lite(), q0VarMessageInfoFor.getDefaultInstance()) : w0.newSchema(k1.unknownFieldSetFullSchema(), r.full(), q0VarMessageInfoFor.getDefaultInstance());
        }
        return newSchema(cls, q0VarMessageInfoFor);
    }
}
