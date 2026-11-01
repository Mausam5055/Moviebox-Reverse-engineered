.class public interface abstract Lcom/mbridge/msdk/thrid/okhttp/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/mbridge/msdk/thrid/okhttp/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/m$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/m$a;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/m;->a:Lcom/mbridge/msdk/thrid/okhttp/m;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
