.class public final synthetic Lkotlin/text/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/text/Regex;

.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/g;->a:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/g;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/g;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlin/text/g;->a:Lkotlin/text/Regex;

    iget-object v1, p0, Lkotlin/text/g;->b:Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/g;->c:I

    invoke-static {v0, v1, v2}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method
