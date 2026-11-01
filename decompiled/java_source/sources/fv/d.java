package fv;

import com.transsion.transfer.androidasync.future.y;
import com.transsion.transfer.androidasync.p;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class d implements a {
    @Override // fv.a
    public com.transsion.transfer.androidasync.future.f a(p pVar) {
        return new f().a(pVar).h(new y() { // from class: fv.c
            @Override // com.transsion.transfer.androidasync.future.y
            public final Object then(Object obj) {
                return new JSONObject((String) obj);
            }
        });
    }
}
