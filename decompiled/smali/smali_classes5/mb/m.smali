.class public final synthetic Lmb/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmb/z;

.field public final synthetic b:Lic/b;


# direct methods
.method public synthetic constructor <init>(Lmb/z;Lic/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/m;->a:Lmb/z;

    iput-object p2, p0, Lmb/m;->b:Lic/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmb/m;->a:Lmb/z;

    iget-object v1, p0, Lmb/m;->b:Lic/b;

    invoke-static {v0, v1}, Lmb/o;->k(Lmb/z;Lic/b;)V

    return-void
.end method
