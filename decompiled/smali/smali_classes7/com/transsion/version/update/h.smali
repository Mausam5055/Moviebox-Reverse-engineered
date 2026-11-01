.class public final synthetic Lcom/transsion/version/update/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/version/update/UpdateVersionRequest;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/transsion/version/update/RemoteVersionInfo;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/version/update/h;->a:Lcom/transsion/version/update/UpdateVersionRequest;

    iput-object p2, p0, Lcom/transsion/version/update/h;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/transsion/version/update/h;->c:Lcom/transsion/version/update/RemoteVersionInfo;

    iput-object p4, p0, Lcom/transsion/version/update/h;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/transsion/version/update/h;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/version/update/h;->a:Lcom/transsion/version/update/UpdateVersionRequest;

    iget-object v1, p0, Lcom/transsion/version/update/h;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/transsion/version/update/h;->c:Lcom/transsion/version/update/RemoteVersionInfo;

    iget-object v3, p0, Lcom/transsion/version/update/h;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/transsion/version/update/h;->e:Z

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/transsion/version/update/UpdateVersionRequest;->a(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
