.class public final synthetic Lcom/journeyapps/barcodescanner/camera/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/camera/a$b;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/camera/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/b;->a:Lcom/journeyapps/barcodescanner/camera/a$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/b;->a:Lcom/journeyapps/barcodescanner/camera/a$b;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/a$b;->a(Lcom/journeyapps/barcodescanner/camera/a$b;)V

    return-void
.end method
