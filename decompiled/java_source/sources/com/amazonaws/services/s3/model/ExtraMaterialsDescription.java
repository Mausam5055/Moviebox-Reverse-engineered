package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ExtraMaterialsDescription implements Serializable {
    public static final ExtraMaterialsDescription NONE = new ExtraMaterialsDescription(Collections.EMPTY_MAP);
    private final Map<String, String> extra;
    private final ConflictResolution resolve;

    /* JADX INFO: renamed from: com.amazonaws.services.s3.model.ExtraMaterialsDescription$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f18699a;

        static {
            int[] iArr = new int[ConflictResolution.values().length];
            f18699a = iArr;
            try {
                iArr[ConflictResolution.FAIL_FAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18699a[ConflictResolution.OVERRIDDEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18699a[ConflictResolution.OVERRIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum ConflictResolution {
        FAIL_FAST,
        OVERRIDE,
        OVERRIDDEN
    }

    public ExtraMaterialsDescription(Map<String, String> map) {
        this(map, ConflictResolution.FAIL_FAST);
    }

    public ExtraMaterialsDescription(Map<String, String> map, ConflictResolution conflictResolution) {
        if (map == null || conflictResolution == null) {
            throw new IllegalArgumentException();
        }
        this.extra = Collections.unmodifiableMap(new HashMap(map));
        this.resolve = conflictResolution;
    }

    public ConflictResolution getConflictResolution() {
        return this.resolve;
    }

    public Map<String, String> getMaterialDescription() {
        return this.extra;
    }

    public Map<String, String> mergeInto(Map<String, String> map) {
        if (this.extra.size() == 0) {
            return map;
        }
        if (map == null || map.size() == 0) {
            return this.extra;
        }
        int i11 = AnonymousClass1.f18699a[this.resolve.ordinal()];
        if (i11 == 1) {
            int size = map.size() + this.extra.size();
            HashMap map2 = new HashMap(map);
            map2.putAll(this.extra);
            if (size == map2.size()) {
                return Collections.unmodifiableMap(map2);
            }
            throw new IllegalArgumentException("The supplemental material descriptions contains conflicting entries");
        }
        if (i11 == 2) {
            HashMap map3 = new HashMap(this.extra);
            map3.putAll(map);
            return Collections.unmodifiableMap(map3);
        }
        if (i11 != 3) {
            throw new UnsupportedOperationException();
        }
        HashMap map4 = new HashMap(map);
        map4.putAll(this.extra);
        return Collections.unmodifiableMap(map4);
    }
}
