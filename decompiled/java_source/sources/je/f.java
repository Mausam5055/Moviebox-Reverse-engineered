package je;

import android.text.TextUtils;
import com.iab.omid.library.hisavana.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0800b interfaceC0800b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0800b, hashSet, jSONObject, j11);
    }

    private void e(String str) {
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f65999c.contains(hVar.k())) {
                    hVar.l().m(str, this.f66001e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // je.b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            e(str);
        }
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        if (ie.c.v(this.f66000d, this.f66003b.a())) {
            return null;
        }
        this.f66003b.a(this.f66000d);
        return this.f66000d.toString();
    }
}
