.class Lcom/transsion/athena/enatha/enatha$anateh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/athena/config/data/model/athena;

.field final synthetic d:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$anateh;->d:Lcom/transsion/athena/enatha/enatha;

    iput-object p2, p0, Lcom/transsion/athena/enatha/enatha$anateh;->a:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/athena/enatha/enatha$anateh;->b:I

    iput-object p4, p0, Lcom/transsion/athena/enatha/enatha$anateh;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 0

    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$anateh;->d:Lcom/transsion/athena/enatha/enatha;

    iget-object v1, p0, Lcom/transsion/athena/enatha/enatha$anateh;->a:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/athena/enatha/enatha$anateh;->b:I

    iget-object v3, p0, Lcom/transsion/athena/enatha/enatha$anateh;->c:Lcom/transsion/athena/config/data/model/athena;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    return-void
.end method
