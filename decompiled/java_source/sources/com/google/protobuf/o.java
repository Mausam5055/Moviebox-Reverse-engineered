package com.google.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes4.dex */
public class o {
    static final o EMPTY_REGISTRY_LITE = new o(true);
    static final String EXTENSION_CLASS_NAME = "com.google.protobuf.Extension";
    private static boolean doFullRuntimeInheritanceCheck = true;
    private static volatile boolean eagerlyParseMessageSets;
    private static volatile o emptyRegistry;
    private final Map<b, GeneratedMessageLite.g> extensionsByNumber;

    private static class a {
        static final Class<?> INSTANCE = resolveExtensionClass();

        private a() {
        }

        static Class<?> resolveExtensionClass() {
            try {
                return Class.forName(o.EXTENSION_CLASS_NAME);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }
    }

    private static final class b {
        private final int number;
        private final Object object;

        b(Object obj, int i11) {
            this.object = obj;
            this.number = i11;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.object == bVar.object && this.number == bVar.number;
        }

        public int hashCode() {
            return (System.identityHashCode(this.object) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.number;
        }
    }

    o() {
        this.extensionsByNumber = new HashMap();
    }

    o(o oVar) {
        if (oVar == EMPTY_REGISTRY_LITE) {
            this.extensionsByNumber = Collections.emptyMap();
        } else {
            this.extensionsByNumber = Collections.unmodifiableMap(oVar.extensionsByNumber);
        }
    }

    o(boolean z10) {
        this.extensionsByNumber = Collections.emptyMap();
    }

    public static o getEmptyRegistry() {
        if (!doFullRuntimeInheritanceCheck) {
            return EMPTY_REGISTRY_LITE;
        }
        o oVarCreateEmpty = emptyRegistry;
        if (oVarCreateEmpty == null) {
            synchronized (o.class) {
                try {
                    oVarCreateEmpty = emptyRegistry;
                    if (oVarCreateEmpty == null) {
                        oVarCreateEmpty = n.createEmpty();
                        emptyRegistry = oVarCreateEmpty;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oVarCreateEmpty;
    }

    public static boolean isEagerlyParseMessageSets() {
        return eagerlyParseMessageSets;
    }

    public static o newInstance() {
        return doFullRuntimeInheritanceCheck ? n.create() : new o();
    }

    public static void setEagerlyParseMessageSets(boolean z10) {
        eagerlyParseMessageSets = z10;
    }

    public final void add(GeneratedMessageLite.g gVar) {
        this.extensionsByNumber.put(new b(gVar.getContainingTypeDefaultInstance(), gVar.getNumber()), gVar);
    }

    public final void add(m mVar) {
        if (GeneratedMessageLite.g.class.isAssignableFrom(mVar.getClass())) {
            add((GeneratedMessageLite.g) mVar);
        }
        if (doFullRuntimeInheritanceCheck && n.isFullRegistry(this)) {
            try {
                getClass().getMethod("add", a.INSTANCE).invoke(this, mVar);
            } catch (Exception e11) {
                throw new IllegalArgumentException(String.format("Could not invoke ExtensionRegistry#add for %s", mVar), e11);
            }
        }
    }

    public <ContainingType extends s0> GeneratedMessageLite.g findLiteExtensionByNumber(ContainingType containingtype, int i11) {
        return this.extensionsByNumber.get(new b(containingtype, i11));
    }

    public o getUnmodifiable() {
        return new o(this);
    }
}
