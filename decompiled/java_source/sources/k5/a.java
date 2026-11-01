package k5;

import com.cloud.tmc.integration.params.TmcStartParams;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f66640j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f66641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f66642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f66643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f66644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f66645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f66646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f66647g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f66648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f66649i;

    public a(String str) {
        this.f66646f = "";
        this.f66641a = str;
    }

    public a(String str, a aVar) {
        this.f66646f = "";
        this.f66641a = str;
        this.f66642b = aVar.f66642b;
        this.f66643c = aVar.f66643c;
        this.f66644d = aVar.f66644d;
        this.f66645e = aVar.f66645e;
        this.f66646f = aVar.f66646f;
        this.f66647g = aVar.f66647g;
        this.f66649i = aVar.f66649i;
        this.f66648h = aVar.f66648h;
    }

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("default");
        int i11 = f66640j;
        f66640j = i11 + 1;
        sb2.append(i11);
        return sb2.toString();
    }

    public static String b(String str, String str2) {
        if (str.equalsIgnoreCase("name")) {
            if (str2.equals(TmcStartParams.KEY_TRANSPARENT)) {
                return "00000000";
            }
            if (str2.equals("black")) {
                return "000000ff";
            }
            if (str2.equals("silver")) {
                return "c0c0c0ff";
            }
            if (str2.equals("gray")) {
                return "808080ff";
            }
            if (str2.equals("white")) {
                return "ffffffff";
            }
            if (str2.equals("maroon")) {
                return "800000ff";
            }
            if (str2.equals("red")) {
                return "ff0000ff";
            }
            if (str2.equals("purple")) {
                return "800080ff";
            }
            if (str2.equals("fuchsia")) {
                return "ff00ffff";
            }
            if (str2.equals("magenta")) {
                return "ff00ffff ";
            }
            if (str2.equals("green")) {
                return "008000ff";
            }
            if (str2.equals("lime")) {
                return "00ff00ff";
            }
            if (str2.equals("olive")) {
                return "808000ff";
            }
            if (str2.equals("yellow")) {
                return "ffff00ff";
            }
            if (str2.equals("navy")) {
                return "000080ff";
            }
            if (str2.equals("blue")) {
                return "0000ffff";
            }
            if (str2.equals("teal")) {
                return "008080ff";
            }
            if (str2.equals("aqua")) {
                return "00ffffff";
            }
            if (str2.equals("cyan")) {
                return "00ffffff ";
            }
        } else {
            if (str.equalsIgnoreCase("&HBBGGRR")) {
                return str2.substring(6) + str2.substring(4, 5) + str2.substring(2, 3) + "ff";
            }
            if (str.equalsIgnoreCase("&HAABBGGRR")) {
                return str2.substring(8) + str2.substring(6, 7) + str2.substring(4, 5) + str2.substring(2, 3);
            }
            if (str.equalsIgnoreCase("decimalCodedBBGGRR")) {
                String hexString = Integer.toHexString(Integer.parseInt(str2));
                while (hexString.length() < 6) {
                    hexString = "0" + hexString;
                }
                return hexString.substring(4) + hexString.substring(2, 4) + hexString.substring(0, 2) + "ff";
            }
            if (str.equalsIgnoreCase("decimalCodedAABBGGRR")) {
                String hexString2 = Long.toHexString(Long.parseLong(str2));
                while (hexString2.length() < 8) {
                    hexString2 = "0" + hexString2;
                }
                return hexString2.substring(6) + hexString2.substring(4, 6) + hexString2.substring(2, 4) + hexString2.substring(0, 2);
            }
        }
        return null;
    }
}
