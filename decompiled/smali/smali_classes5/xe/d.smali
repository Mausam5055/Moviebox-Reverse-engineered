.class public final synthetic Lxe/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/d;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe/d;->a:Lcom/journeyapps/barcodescanner/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxe/d;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->c(Lcom/journeyapps/barcodescanner/d;)V

    return-void
.end method
