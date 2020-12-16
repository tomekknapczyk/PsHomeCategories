{**
 * Copyright 2020 Mafisz
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0).
 * It is available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 *
 * @author    Mafisz <mafisz@gmail.com>
 * @copyright Mafisz
 * @license   https://opensource.org/licenses/AFL-3.0  Academic Free License (AFL 3.0)
*}

<div class="mafisz_categories_container container">
    <h2>Kategorie produktów</h2>
    <div class="mafisz_categories">
        {foreach from=$categories item="category"}
        <div class="mafisz_category_container">
            <a href="{$category.url}" title="{$category.name}">
                <img src="{$link->getCatImageLink($category.link_rewrite|escape:'htmlall':'UTF-8', $category.id, 'category_default')}" class="mafisz_category_image">
            </a>

            <a href="{$category.url}" title="{$category.name}" class="mafisz_category_title">
                {$category.name}
            </a>

            <div class="mafisz_category_description">{$category.description|truncate:150:'...' nofilter}</div>
        </div>
        {/foreach}
    </div>
</div>