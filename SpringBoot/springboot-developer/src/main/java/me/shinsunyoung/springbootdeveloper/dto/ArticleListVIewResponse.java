package me.shinsunyoung.springbootdeveloper.dto;

import lombok.Getter;
import me.shinsunyoung.springbootdeveloper.domain.Article;

@Getter
public class ArticleListVIewResponse {
    private final Long id;
    private final String title;
    private final String content;
    public ArticleListVIewResponse(Article article) {
        this.id = article.getId();
        this.title = article.getTitle();
        this.content = article.getContent();
    }
}
