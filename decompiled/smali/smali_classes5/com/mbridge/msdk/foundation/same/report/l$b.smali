.class public Lcom/mbridge/msdk/foundation/same/report/l$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/l$b;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/l$b;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/report/l$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/l$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/report/l$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/l$b;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/foundation/same/report/l;
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/foundation/same/report/l;-><init>(Lcom/mbridge/msdk/foundation/same/report/l$b;Lcom/mbridge/msdk/foundation/same/report/l$a;)V

    return-object v0
.end method
