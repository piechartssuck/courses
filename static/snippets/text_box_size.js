Qualtrics.SurveyEngine.addOnload(function()
{
    var inputWidth = "700px";
    $(this.questionId).select('.SumInput').each(function(name, index)
{
        name.style.width = inputWidth;
});
    $(this.questionId).select('.SumTotal').each(function(name, index)
{
        name.style.width = inputWidth;
    	});
    $(this.questionId).select('.InputText').each(function(name, index)
{
        name.style.width = inputWidth;
    });
});
