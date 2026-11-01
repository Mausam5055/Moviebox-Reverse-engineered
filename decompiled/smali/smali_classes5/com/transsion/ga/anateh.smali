.class public Lcom/transsion/ga/anateh;
.super Ljava/lang/Exception;


# static fields
.field public static final synthetic a:I


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/transsion/ga/anateh;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ga/anateh;->c:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/transsion/ga/anateh;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/ga/anateh;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    new-instance v1, Lcom/transsion/ga/anateh;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ga/anateh;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ga/anateh;->c:Landroid/os/Bundle;

    return-object v0
.end method
