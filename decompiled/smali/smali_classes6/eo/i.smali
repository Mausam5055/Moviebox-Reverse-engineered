.class public final synthetic Leo/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Leo/m;


# direct methods
.method public synthetic constructor <init>(Leo/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo/i;->a:Leo/m;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Leo/i;->a:Leo/m;

    invoke-static {v0}, Leo/m;->i(Leo/m;)Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method
