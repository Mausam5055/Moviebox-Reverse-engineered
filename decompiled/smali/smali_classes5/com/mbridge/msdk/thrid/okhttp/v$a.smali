.class Lcom/mbridge/msdk/thrid/okhttp/v$a;
.super Lcom/mbridge/msdk/thrid/okio/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/v;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/mbridge/msdk/thrid/okhttp/v;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/v;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/v$a;->k:Lcom/mbridge/msdk/thrid/okhttp/v;

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected j()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v$a;->k:Lcom/mbridge/msdk/thrid/okhttp/v;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/v;->cancel()V

    return-void
.end method
