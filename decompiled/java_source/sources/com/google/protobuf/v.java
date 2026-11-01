package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
class v implements r0 {
    private static final v instance = new v();

    private v() {
    }

    public static v getInstance() {
        return instance;
    }

    @Override // com.google.protobuf.r0
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override // com.google.protobuf.r0
    public q0 messageInfoFor(Class<?> cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (q0) GeneratedMessageLite.getDefaultInstance(cls.asSubclass(GeneratedMessageLite.class)).buildMessageInfo();
        } catch (Exception e11) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e11);
        }
    }
}
