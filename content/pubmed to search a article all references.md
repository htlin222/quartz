---
title: "pubmed to search a article all references"
slug: "pubmed-to-search-a-article-all-references"
date: "2023-04-21"
enableToc: false
tags:
- building
---

> [!info]
>
> 🌱 來自: [[project and idea of python]]

# pubmed to search a article all references

```python
from Bio import Entrez
from pybtex.database import BibliographyData, Entry
from pybtex.database.input import bibtex

# Provide your email address to NCBI
Entrez.email = "your.email@domain.com"

# Search for the article using its PMID
pmid = "PMID"  # Replace with the actual PubMed ID of the article
handle = Entrez.efetch(db="pubmed", id=pmid, retmode="xml")
record = Entrez.read(handle)

# Extract the references from the article
references = []
for ref in record[0]['MedlineCitation']['Article']['ReferenceList']:
    references.append(ref['ArticleIdList'][0])

# Create a BibliographyData object
bib_data = BibliographyData()

# Add the references to the BibliographyData object
for ref_id in references:
    entry = Entry(
        'article',
        fields={
            'ID': ref_id,
            'title': '',
            'author': '',
            'journal': '',
            'year': '',
            'volume': '',
            'number': '',
            'pages': '',
            'doi': '',
            'url': f'https://pubmed.ncbi.nlm.nih.gov/{ref_id}/'
        }
    )
    bib_data.add_entry(ref_id, entry)

# Save the BibliographyData object as a BibTeX file
with open(f'{pmid}_references.bib', 'w') as bibfile:
    bibfile.write(bibtex.write(bib_data))

```
