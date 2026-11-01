package ve;

import com.iab.omid.library.vungle.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e extends a {
    public e(b.InterfaceC0947b interfaceC0947b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0947b, hashSet, jSONObject, j11);
    }

    private void e(String str) {
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f77270c.contains(hVar.j())) {
                    hVar.k().h(str, this.f77272e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ve.b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        e(str);
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        return this.f77271d.toString();
    }
}
