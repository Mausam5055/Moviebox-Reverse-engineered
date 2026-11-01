.class public final synthetic Lcom/google/firebase/sessions/e;
.super Ljava/lang/Object;

# interfaces
.implements Lr8/g;


# instance fields
.field public final synthetic a:Lcom/google/firebase/sessions/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/sessions/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/e;->a:Lcom/google/firebase/sessions/f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/sessions/e;->a:Lcom/google/firebase/sessions/f;

    check-cast p1, Lcom/google/firebase/sessions/u;

    invoke-static {v0, p1}, Lcom/google/firebase/sessions/f;->b(Lcom/google/firebase/sessions/f;Lcom/google/firebase/sessions/u;)[B

    move-result-object p1

    return-object p1
.end method
