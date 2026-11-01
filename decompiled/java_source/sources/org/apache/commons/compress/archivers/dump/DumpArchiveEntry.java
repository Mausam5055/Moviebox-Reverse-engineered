package org.apache.commons.compress.archivers.dump;

import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class DumpArchiveEntry implements o00.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f71112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TYPE f71113b = TYPE.UNKNOWN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f71114c = Collections.emptySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f71115d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f71116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71117f;

    public enum PERMISSION {
        SETUID(2048),
        SETGUI(1024),
        STICKY(512),
        USER_READ(256),
        USER_WRITE(128),
        USER_EXEC(64),
        GROUP_READ(32),
        GROUP_WRITE(16),
        GROUP_EXEC(8),
        WORLD_READ(4),
        WORLD_WRITE(2),
        WORLD_EXEC(1);

        private int code;

        PERMISSION(int i11) {
            this.code = i11;
        }

        public static Set<PERMISSION> find(int i11) {
            HashSet hashSet = new HashSet();
            for (PERMISSION permission : values()) {
                int i12 = permission.code;
                if ((i11 & i12) == i12) {
                    hashSet.add(permission);
                }
            }
            return hashSet.isEmpty() ? Collections.emptySet() : EnumSet.copyOf((Collection) hashSet);
        }
    }

    public enum TYPE {
        WHITEOUT(14),
        SOCKET(12),
        LINK(10),
        FILE(8),
        BLKDEV(6),
        DIRECTORY(4),
        CHRDEV(2),
        FIFO(1),
        UNKNOWN(15);

        private int code;

        TYPE(int i11) {
            this.code = i11;
        }

        public static TYPE find(int i11) {
            TYPE type = UNKNOWN;
            for (TYPE type2 : values()) {
                if (i11 == type2.code) {
                    type = type2;
                }
            }
            return type;
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f71118a = new byte[512];

        a() {
        }
    }

    public String a() {
        return this.f71112a;
    }

    String b() {
        return this.f71116e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DumpArchiveEntry dumpArchiveEntry = (DumpArchiveEntry) obj;
        return dumpArchiveEntry.f71115d != null && this.f71117f == dumpArchiveEntry.f71117f;
    }

    public int hashCode() {
        return this.f71117f;
    }

    public String toString() {
        return a();
    }
}
