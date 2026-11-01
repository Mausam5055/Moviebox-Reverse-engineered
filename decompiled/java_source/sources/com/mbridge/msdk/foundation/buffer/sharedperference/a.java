package com.mbridge.msdk.foundation.buffer.sharedperference;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.directory.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f34959b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f34960c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    FastKV f34961a;

    private a() {
    }

    private void a() {
        if (this.f34961a == null) {
            try {
                this.f34961a = new FastKV.Builder(e.b(c.MBRIDGE_700_CONFIG), "mbridge").build();
            } catch (Exception unused) {
                this.f34961a = null;
            }
        }
    }

    public static synchronized a b() {
        try {
            if (f34960c == null) {
                f34960c = new a();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f34960c;
    }

    public int a(String str, int i11) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return i11;
            }
            a();
            FastKV fastKV = this.f34961a;
            if (fastKV != null) {
                try {
                    return fastKV.getInt(str, i11);
                } catch (Exception unused) {
                    return i11;
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34959b, "getInt error: " + e11.getMessage());
            }
        }
        return i11;
    }

    public String a(String str) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return null;
            }
            a();
            FastKV fastKV = this.f34961a;
            if (fastKV != null) {
                try {
                    return fastKV.getString(str, "");
                } catch (Exception unused) {
                    return "";
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34959b, "get error: " + e11.getMessage());
            }
        }
        return null;
    }

    public void a(String str, long j11) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                o0.b(f34959b, "context is null in put");
                return;
            }
            a();
            FastKV fastKV = this.f34961a;
            if (fastKV != null) {
                try {
                    fastKV.putLong(str, j11);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34959b, "putLong error: " + e11.getMessage());
            }
        }
    }

    public void a(String str, String str2) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f34961a;
            if (fastKV != null) {
                try {
                    fastKV.putString(str, str2);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34959b, "put error: " + e11.getMessage());
            }
        }
    }

    public Long b(String str) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                o0.b(f34959b, "context is null in get");
                return 0L;
            }
            a();
            FastKV fastKV = this.f34961a;
            if (fastKV != null) {
                try {
                    return Long.valueOf(fastKV.getLong(str, 0L));
                } catch (Exception unused) {
                    return 0L;
                }
            }
            return 0L;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34959b, "getLong error: " + e11.getMessage());
            }
        }
    }

    public void b(String str, int i11) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f34961a;
            if (fastKV != null) {
                try {
                    fastKV.putInt(str, i11);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void c(String str) {
        if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
            return;
        }
        a();
        FastKV fastKV = this.f34961a;
        if (fastKV != null) {
            try {
                fastKV.remove(str);
            } catch (Exception unused) {
            }
        }
    }
}
