package c5;

import a5.h1;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.StreamingOutput;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;

/* JADX INFO: loaded from: classes2.dex */
public class b implements MessageBodyReader, MessageBodyWriter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class[] f17002f = {InputStream.class, Reader.class};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Class[] f17003g = {InputStream.class, OutputStream.class, Writer.class, StreamingOutput.class, Response.class};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Charset f17004a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected SerializerFeature[] f17005b = new SerializerFeature[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected h1[] f17006c = new h1[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b5.a f17007d = new b5.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Class[] f17008e = null;
}
