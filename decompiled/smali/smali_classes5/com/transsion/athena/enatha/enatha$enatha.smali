.class Lcom/transsion/athena/enatha/enatha$enatha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/athena/data/anateh/enatha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/athena/data/anateh/enatha<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/ga/anateh;

    const-string v1, "cleanupEvents_oom"

    invoke-direct {p1, v1, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method
