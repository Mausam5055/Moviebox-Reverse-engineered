.class public final synthetic Lxz/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz/a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lxz/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxz/a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lxz/a;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;->c(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
