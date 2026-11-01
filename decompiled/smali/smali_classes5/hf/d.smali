.class public final Lhf/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lhf/h;


# direct methods
.method public constructor <init>(Lhf/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhf/d;->a:Lhf/h;

    return-void
.end method


# virtual methods
.method public a(Lhf/e;)V
    .locals 1

    iget-object v0, p0, Lhf/d;->a:Lhf/h;

    invoke-static {v0, p1}, Lhf/b;->f(Lhf/h;Lhf/e;)V

    return-void
.end method
