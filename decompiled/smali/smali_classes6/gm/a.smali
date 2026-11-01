.class public final synthetic Lgm/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgm/a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lgm/a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/transsion/lib_web/BaseLibWebFragment;->Y(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
