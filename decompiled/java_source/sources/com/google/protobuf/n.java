package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
final class n {
    static final Class<?> EXTENSION_REGISTRY_CLASS = reflectExtensionRegistry();
    static final String FULL_REGISTRY_CLASS_NAME = "com.google.protobuf.ExtensionRegistry";

    n() {
    }

    public static o create() {
        o oVarInvokeSubclassFactory = invokeSubclassFactory("newInstance");
        return oVarInvokeSubclassFactory != null ? oVarInvokeSubclassFactory : new o();
    }

    public static o createEmpty() {
        o oVarInvokeSubclassFactory = invokeSubclassFactory("getEmptyRegistry");
        return oVarInvokeSubclassFactory != null ? oVarInvokeSubclassFactory : o.EMPTY_REGISTRY_LITE;
    }

    private static final o invokeSubclassFactory(String str) {
        Class<?> cls = EXTENSION_REGISTRY_CLASS;
        if (cls == null) {
            return null;
        }
        try {
            return (o) cls.getDeclaredMethod(str, null).invoke(null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    static boolean isFullRegistry(o oVar) {
        Class<?> cls = EXTENSION_REGISTRY_CLASS;
        return cls != null && cls.isAssignableFrom(oVar.getClass());
    }

    static Class<?> reflectExtensionRegistry() {
        try {
            return Class.forName(FULL_REGISTRY_CLASS_NAME);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
