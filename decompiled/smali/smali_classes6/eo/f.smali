.class public final synthetic Leo/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Leo/m;


# direct methods
.method public synthetic constructor <init>(Leo/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo/f;->a:Leo/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leo/f;->a:Leo/m;

    invoke-static {v0}, Leo/m;->k(Leo/m;)V

    return-void
.end method
