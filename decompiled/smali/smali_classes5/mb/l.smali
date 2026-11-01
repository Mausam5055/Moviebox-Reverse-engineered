.class public final synthetic Lmb/l;
.super Ljava/lang/Object;

# interfaces
.implements Lic/b;


# instance fields
.field public final synthetic a:Lmb/o;

.field public final synthetic b:Lmb/c;


# direct methods
.method public synthetic constructor <init>(Lmb/o;Lmb/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/l;->a:Lmb/o;

    iput-object p2, p0, Lmb/l;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmb/l;->a:Lmb/o;

    iget-object v1, p0, Lmb/l;->b:Lmb/c;

    invoke-static {v0, v1}, Lmb/o;->j(Lmb/o;Lmb/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
