package ug;

import com.alibaba.fastjson.serializer.SerializerFeature;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.k;

/* JADX INFO: loaded from: classes3.dex */
public class b implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final MediaType f76748a = MediaType.parse("application/json; charset=UTF-8");

    @Override // retrofit2.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RequestBody convert(Object obj) {
        return RequestBody.create(f76748a, com.alibaba.fastjson.a.toJSONBytes(obj, new SerializerFeature[0]));
    }
}
