.class public final synthetic Lgm/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgm/l;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lgm/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgm/l;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lgm/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lgm/n;->a(Landroid/webkit/WebView;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
