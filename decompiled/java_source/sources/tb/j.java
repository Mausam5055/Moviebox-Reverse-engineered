package tb;

import android.util.Base64;
import android.util.JsonReader;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final bc.a f76174a = new dc.d().j(com.google.firebase.crashlytics.internal.model.a.f31311a).k(true).i();

    /* JADX INFO: Access modifiers changed from: private */
    interface a {
        Object a(JsonReader jsonReader);
    }

    private static CrashlyticsReport.e.d.f A(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.f.a aVarA = CrashlyticsReport.e.d.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("assignments")) {
                aVarA.b(n(jsonReader, new a() { // from class: tb.f
                    @Override // tb.j.a
                    public final Object a(JsonReader jsonReader2) {
                        return j.z(jsonReader2);
                    }
                }));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.d.a.b.AbstractC0428d B(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a abstractC0429aA = CrashlyticsReport.e.d.a.b.AbstractC0428d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "address":
                    abstractC0429aA.b(jsonReader.nextLong());
                    break;
                case "code":
                    abstractC0429aA.c(jsonReader.nextString());
                    break;
                case "name":
                    abstractC0429aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0429aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.e.d.a.b.AbstractC0430e C(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a abstractC0431aA = CrashlyticsReport.e.d.a.b.AbstractC0430e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0431aA.b(n(jsonReader, new i()));
                    break;
                case "name":
                    abstractC0431aA.d(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0431aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0431aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.d.b D(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.d.b.a aVarA = CrashlyticsReport.d.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("filename")) {
                aVarA.c(jsonReader.nextString());
            } else if (strNextName.equals("contents")) {
                aVarA.b(Base64.decode(jsonReader.nextString(), 2));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.d E(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.d.a aVarA = CrashlyticsReport.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("files")) {
                aVarA.b(n(jsonReader, new a() { // from class: tb.e
                    @Override // tb.j.a
                    public final Object a(JsonReader jsonReader2) {
                        return j.D(jsonReader2);
                    }
                }));
            } else if (strNextName.equals("orgId")) {
                aVarA.c(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.AbstractC0437e F(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.AbstractC0437e.a aVarA = CrashlyticsReport.e.AbstractC0437e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildVersion":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "jailbroken":
                    aVarA.c(jsonReader.nextBoolean());
                    break;
                case "version":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "platform":
                    aVarA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.e.d.a.c G(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.c.AbstractC0434a abstractC0434aA = CrashlyticsReport.e.d.a.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "pid":
                    abstractC0434aA.d(jsonReader.nextInt());
                    break;
                case "processName":
                    abstractC0434aA.e(jsonReader.nextString());
                    break;
                case "defaultProcess":
                    abstractC0434aA.b(jsonReader.nextBoolean());
                    break;
                case "importance":
                    abstractC0434aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0434aA.a();
    }

    private static CrashlyticsReport H(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.b bVarB = CrashlyticsReport.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "ndkPayload":
                    bVarB.j(E(jsonReader));
                    break;
                case "sdkVersion":
                    bVarB.l(jsonReader.nextString());
                    break;
                case "appQualitySessionId":
                    bVarB.c(jsonReader.nextString());
                    break;
                case "appExitInfo":
                    bVarB.b(m(jsonReader));
                    break;
                case "buildVersion":
                    bVarB.d(jsonReader.nextString());
                    break;
                case "firebaseAuthenticationToken":
                    bVarB.f(jsonReader.nextString());
                    break;
                case "gmpAppId":
                    bVarB.h(jsonReader.nextString());
                    break;
                case "installationUuid":
                    bVarB.i(jsonReader.nextString());
                    break;
                case "firebaseInstallationId":
                    bVarB.g(jsonReader.nextString());
                    break;
                case "platform":
                    bVarB.k(jsonReader.nextInt());
                    break;
                case "displayVersion":
                    bVarB.e(jsonReader.nextString());
                    break;
                case "session":
                    bVarB.m(J(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarB.a();
    }

    private static CrashlyticsReport.e.d.AbstractC0436e.b I(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.AbstractC0436e.b.a aVarA = CrashlyticsReport.e.d.AbstractC0436e.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("variantId")) {
                aVarA.c(jsonReader.nextString());
            } else if (strNextName.equals("rolloutId")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e J(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.b bVarA = CrashlyticsReport.e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "startedAt":
                    bVarA.m(jsonReader.nextLong());
                    break;
                case "appQualitySessionId":
                    bVarA.c(jsonReader.nextString());
                    break;
                case "identifier":
                    bVarA.k(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "endedAt":
                    bVarA.f(Long.valueOf(jsonReader.nextLong()));
                    break;
                case "device":
                    bVarA.e(q(jsonReader));
                    break;
                case "events":
                    bVarA.g(n(jsonReader, new a() { // from class: tb.d
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.r(jsonReader2);
                        }
                    }));
                    break;
                case "os":
                    bVarA.l(F(jsonReader));
                    break;
                case "app":
                    bVarA.b(l(jsonReader));
                    break;
                case "user":
                    bVarA.n(K(jsonReader));
                    break;
                case "generator":
                    bVarA.h(jsonReader.nextString());
                    break;
                case "crashed":
                    bVarA.d(jsonReader.nextBoolean());
                    break;
                case "generatorType":
                    bVarA.i(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static CrashlyticsReport.e.f K(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.f.a aVarA = CrashlyticsReport.e.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("identifier")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.a l(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.a.AbstractC0422a abstractC0422aA = CrashlyticsReport.e.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "identifier":
                    abstractC0422aA.e(jsonReader.nextString());
                    break;
                case "developmentPlatform":
                    abstractC0422aA.b(jsonReader.nextString());
                    break;
                case "developmentPlatformVersion":
                    abstractC0422aA.c(jsonReader.nextString());
                    break;
                case "version":
                    abstractC0422aA.g(jsonReader.nextString());
                    break;
                case "installationUuid":
                    abstractC0422aA.f(jsonReader.nextString());
                    break;
                case "displayVersion":
                    abstractC0422aA.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0422aA.a();
    }

    private static CrashlyticsReport.a m(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.a.b bVarA = CrashlyticsReport.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "buildIdMappingForArch":
                    bVarA.b(n(jsonReader, new a() { // from class: tb.a
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.o(jsonReader2);
                        }
                    }));
                    break;
                case "pid":
                    bVarA.d(jsonReader.nextInt());
                    break;
                case "pss":
                    bVarA.f(jsonReader.nextLong());
                    break;
                case "rss":
                    bVarA.h(jsonReader.nextLong());
                    break;
                case "timestamp":
                    bVarA.i(jsonReader.nextLong());
                    break;
                case "processName":
                    bVarA.e(jsonReader.nextString());
                    break;
                case "reasonCode":
                    bVarA.g(jsonReader.nextInt());
                    break;
                case "traceFile":
                    bVarA.j(jsonReader.nextString());
                    break;
                case "importance":
                    bVarA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static List n(JsonReader jsonReader, a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.a.AbstractC0420a o(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.a.AbstractC0420a.AbstractC0421a abstractC0421aA = CrashlyticsReport.a.AbstractC0420a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "libraryName":
                    abstractC0421aA.d(jsonReader.nextString());
                    break;
                case "arch":
                    abstractC0421aA.b(jsonReader.nextString());
                    break;
                case "buildId":
                    abstractC0421aA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0421aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.c p(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.c.a aVarA = CrashlyticsReport.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("key")) {
                aVarA.b(jsonReader.nextString());
            } else if (strNextName.equals(AppMeasurementSdk.ConditionalUserProperty.VALUE)) {
                aVarA.c(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.c q(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.c.a aVarA = CrashlyticsReport.e.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "simulator":
                    aVarA.i(jsonReader.nextBoolean());
                    break;
                case "manufacturer":
                    aVarA.e(jsonReader.nextString());
                    break;
                case "ram":
                    aVarA.h(jsonReader.nextLong());
                    break;
                case "arch":
                    aVarA.b(jsonReader.nextInt());
                    break;
                case "diskSpace":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "cores":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "model":
                    aVarA.f(jsonReader.nextString());
                    break;
                case "state":
                    aVarA.j(jsonReader.nextInt());
                    break;
                case "modelClass":
                    aVarA.g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.e.d r(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.b bVarA = CrashlyticsReport.e.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "device":
                    bVarA.c(u(jsonReader));
                    break;
                case "rollouts":
                    bVarA.e(A(jsonReader));
                    break;
                case "app":
                    bVarA.b(s(jsonReader));
                    break;
                case "log":
                    bVarA.d(y(jsonReader));
                    break;
                case "type":
                    bVarA.g(jsonReader.nextString());
                    break;
                case "timestamp":
                    bVarA.f(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVarA.a();
    }

    private static CrashlyticsReport.e.d.a s(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.AbstractC0423a abstractC0423aA = CrashlyticsReport.e.d.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appProcessDetails":
                    abstractC0423aA.b(n(jsonReader, new a() { // from class: tb.c
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.G(jsonReader2);
                        }
                    }));
                    break;
                case "background":
                    abstractC0423aA.c(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case "execution":
                    abstractC0423aA.f(v(jsonReader));
                    break;
                case "internalKeys":
                    abstractC0423aA.g(n(jsonReader, new a() { // from class: tb.b
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "customAttributes":
                    abstractC0423aA.e(n(jsonReader, new a() { // from class: tb.b
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.p(jsonReader2);
                        }
                    }));
                    break;
                case "uiOrientation":
                    abstractC0423aA.h(jsonReader.nextInt());
                    break;
                case "currentProcessDetails":
                    abstractC0423aA.d(G(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0423aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.e.d.a.b.AbstractC0424a t(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a abstractC0425aA = CrashlyticsReport.e.d.a.b.AbstractC0424a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "name":
                    abstractC0425aA.c(jsonReader.nextString());
                    break;
                case "size":
                    abstractC0425aA.d(jsonReader.nextLong());
                    break;
                case "uuid":
                    abstractC0425aA.f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case "baseAddress":
                    abstractC0425aA.b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0425aA.a();
    }

    private static CrashlyticsReport.e.d.c u(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.c.a aVarA = CrashlyticsReport.e.d.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "batteryLevel":
                    aVarA.b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case "batteryVelocity":
                    aVarA.c(jsonReader.nextInt());
                    break;
                case "orientation":
                    aVarA.e(jsonReader.nextInt());
                    break;
                case "diskUsed":
                    aVarA.d(jsonReader.nextLong());
                    break;
                case "ramUsed":
                    aVarA.g(jsonReader.nextLong());
                    break;
                case "proximityOn":
                    aVarA.f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    private static CrashlyticsReport.e.d.a.b v(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0426b abstractC0426bA = CrashlyticsReport.e.d.a.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "appExitInfo":
                    abstractC0426bA.b(m(jsonReader));
                    break;
                case "threads":
                    abstractC0426bA.f(n(jsonReader, new a() { // from class: tb.g
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.C(jsonReader2);
                        }
                    }));
                    break;
                case "signal":
                    abstractC0426bA.e(B(jsonReader));
                    break;
                case "binaries":
                    abstractC0426bA.c(n(jsonReader, new a() { // from class: tb.h
                        @Override // tb.j.a
                        public final Object a(JsonReader jsonReader2) {
                            return j.t(jsonReader2);
                        }
                    }));
                    break;
                case "exception":
                    abstractC0426bA.d(w(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0426bA.a();
    }

    private static CrashlyticsReport.e.d.a.b.c w(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.c.AbstractC0427a abstractC0427aA = CrashlyticsReport.e.d.a.b.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    abstractC0427aA.c(n(jsonReader, new i()));
                    break;
                case "reason":
                    abstractC0427aA.e(jsonReader.nextString());
                    break;
                case "type":
                    abstractC0427aA.f(jsonReader.nextString());
                    break;
                case "causedBy":
                    abstractC0427aA.b(w(jsonReader));
                    break;
                case "overflowCount":
                    abstractC0427aA.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0427aA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b x(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a abstractC0433aA = CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "offset":
                    abstractC0433aA.d(jsonReader.nextLong());
                    break;
                case "symbol":
                    abstractC0433aA.f(jsonReader.nextString());
                    break;
                case "pc":
                    abstractC0433aA.e(jsonReader.nextLong());
                    break;
                case "file":
                    abstractC0433aA.b(jsonReader.nextString());
                    break;
                case "importance":
                    abstractC0433aA.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return abstractC0433aA.a();
    }

    private static CrashlyticsReport.e.d.AbstractC0435d y(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.AbstractC0435d.a aVarA = CrashlyticsReport.e.d.AbstractC0435d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("content")) {
                aVarA.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CrashlyticsReport.e.d.AbstractC0436e z(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.e.d.AbstractC0436e.a aVarA = CrashlyticsReport.e.d.AbstractC0436e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "parameterKey":
                    aVarA.b(jsonReader.nextString());
                    break;
                case "templateVersion":
                    aVarA.e(jsonReader.nextLong());
                    break;
                case "rolloutVariant":
                    aVarA.d(I(jsonReader));
                    break;
                case "parameterValue":
                    aVarA.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return aVarA.a();
    }

    public CrashlyticsReport L(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                CrashlyticsReport crashlyticsReportH = H(jsonReader);
                jsonReader.close();
                return crashlyticsReportH;
            } catch (Throwable th2) {
                try {
                    jsonReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IllegalStateException e11) {
            throw new IOException(e11);
        }
    }

    public String M(CrashlyticsReport crashlyticsReport) {
        return f76174a.b(crashlyticsReport);
    }

    public CrashlyticsReport.e.d j(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                CrashlyticsReport.e.d dVarR = r(jsonReader);
                jsonReader.close();
                return dVarR;
            } catch (Throwable th2) {
                try {
                    jsonReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IllegalStateException e11) {
            throw new IOException(e11);
        }
    }

    public String k(CrashlyticsReport.e.d dVar) {
        return f76174a.b(dVar);
    }
}
