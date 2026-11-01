.class public interface abstract Lcom/transsion/edcation/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/edcation/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J%\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\n\u001a\u00020\tH\u00a7@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\n\u001a\u00020\rH\'\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ9\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0012\u001a\u00020\u0011H\'\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/edcation/c;",
        "",
        "",
        "host",
        "Lio/reactivex/rxjava3/core/j;",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/edcation/bean/EducationInterestResp;",
        "b",
        "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;",
        "Lcom/transsion/edcation/bean/InterestBody;",
        "request",
        "d",
        "(Ljava/lang/String;Lcom/transsion/edcation/bean/InterestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/transsion/edcation/bean/CourseBody;",
        "c",
        "(Ljava/lang/String;Lcom/transsion/edcation/bean/CourseBody;)Lio/reactivex/rxjava3/core/j;",
        "page",
        "",
        "perPage",
        "Lcom/transsion/edcation/bean/CourseListResp;",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;",
        "Education_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "host"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "perPage"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/edcation/bean/CourseListResp;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/wefeed-mobile-bff/learning/my-course"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "host"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/edcation/bean/EducationInterestResp;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/wefeed-mobile-bff/learning/prefer-options"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Lcom/transsion/edcation/bean/CourseBody;)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "host"
        .end annotation
    .end param
    .param p2    # Lcom/transsion/edcation/bean/CourseBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/edcation/bean/CourseBody;",
            ")",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wefeed-mobile-bff/learning/add-course"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Lcom/transsion/edcation/bean/InterestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "host"
        .end annotation
    .end param
    .param p2    # Lcom/transsion/edcation/bean/InterestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/edcation/bean/InterestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wefeed-mobile-bff/learning/submit-prefer"
    .end annotation
.end method
