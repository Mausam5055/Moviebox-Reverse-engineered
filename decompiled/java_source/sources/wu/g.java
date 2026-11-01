package wu;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.tencent.tinker.lib.service.PatchResult;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements ou.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ou.b f77978a;

    public g(ou.b bVar) {
        this.f77978a = bVar;
    }

    @Override // ou.c
    public void a(Throwable th2, int i11) {
        HashMap map = new HashMap();
        map.put("sub_type", "load_exception");
        map.put("error_code", String.valueOf(i11));
        if (th2 != null) {
            map.put("exception", th2.getClass().getSimpleName());
            if (th2.getMessage() != null) {
                map.put("message", th2.getMessage());
            }
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void b(String str, String str2) {
        HashMap map = new HashMap();
        map.put("sub_type", "patch_upgraded");
        if (str != null) {
            map.put("from_patch_id", str);
        }
        if (str2 != null) {
            map.put("to_patch_id", str2);
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void c(String str, String str2) {
        HashMap map = new HashMap();
        map.put("sub_type", "blacklisted");
        if (str != null) {
            map.put("patch_id", str);
        }
        if (str2 != null) {
            map.put("reason", str2);
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void d(String str, String str2) {
        HashMap map = new HashMap();
        map.put("sub_type", "download_start");
        if (str != null) {
            map.put("patch_id", str);
        }
        if (str2 != null) {
            map.put("url", str2);
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void e(File file, int i11) {
        HashMap map = new HashMap();
        map.put("sub_type", "patch_listener_receive_fail");
        map.put("error_code", String.valueOf(i11));
        if (file != null) {
            map.put("patch_file", file.getName());
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void f() {
        HashMap map = new HashMap();
        map.put("sub_type", "patch_service_start");
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void g(String str, Throwable th2) {
        HashMap map = new HashMap();
        map.put("sub_type", "patch_install_exception");
        if (str != null) {
            map.put("patch_id", str);
        }
        if (th2 != null) {
            map.put("exception", th2.getClass().getSimpleName());
            if (th2.getMessage() != null) {
                map.put("message", th2.getMessage());
            }
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void h(String str, String str2) {
        HashMap map = new HashMap();
        map.put("sub_type", "rollback");
        if (str != null) {
            map.put("patch_id", str);
        }
        if (str2 != null) {
            map.put("reason", str2);
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void i(String str, boolean z10, long j11) {
        HashMap map = new HashMap();
        map.put("sub_type", "patch_install_result");
        if (str != null) {
            map.put("patch_id", str);
        }
        map.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, String.valueOf(z10));
        map.put("cost_ms", String.valueOf(j11));
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void j(PatchResult patchResult) {
        if (patchResult == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("sub_type", "patch_result_report");
        map.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, String.valueOf(patchResult.isSuccess));
        String str = patchResult.patchVersion;
        if (str != null) {
            map.put("patch_id", str);
        }
        Throwable th2 = patchResult.f40693e;
        if (th2 != null) {
            map.put("exception", th2.getClass().getSimpleName());
        }
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void k(int i11, long j11) {
        if (i11 == -1 || i11 == -2) {
            return;
        }
        HashMap map = new HashMap();
        map.put("sub_type", "load_result");
        map.put("load_code", String.valueOf(i11));
        map.put("load_result", i11 == 0 ? NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS : "fail");
        map.put("cost_ms", String.valueOf(j11));
        this.f77978a.a("hotfix_event", map);
    }

    @Override // ou.c
    public void l(String str, String str2) {
        HashMap map = new HashMap();
        map.put("sub_type", "download_blocked");
        if (str != null) {
            map.put("patch_id", str);
        }
        if (str2 != null) {
            map.put("reason", str2);
        }
        this.f77978a.a("hotfix_event", map);
    }
}
