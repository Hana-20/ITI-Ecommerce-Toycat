package gov.iti.toycat.models.dtos;

public class CategoryDTO {
    private Integer id;
    private String name;

    public CategoryDTO(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public CategoryDTO() {
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "CategoryDTO [id=" + id + ", name=" + name + "]";
    }

}
